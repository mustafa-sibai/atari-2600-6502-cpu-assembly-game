    processor 6502
    
    seg code
    org $F000               ; Define the code origin at $F000

Start:
    sei                     ; Disable interrupts
    cld                     ; Disable the BCD decimal math mode
    ldx #$FF                ; Load the X register with $FF
    txs                     ; Transfer the X register to the (S)tack pointer

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Clear the Page Zero region ($00 to $FF)
; Meaning the entire RAM and also the entire TIA registers
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    lda #0                  ; Load the A register with the value 0
    ldx #$FF                ; Load the X register with the value $FF

MemLoop:
    sta $0,X                ; Store the value of A register inside memeory address inside X register
    dex                     ; Decrement the X register by 1. X--
    bne MemLoop             ; Branch to MemLoop if (Z)ero flag is not set meaning it is not equal to zero

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Fill the ROM size to exactly 4KB
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    org $FFFC               ; Go to $FFFC memory location
    .word Start             ; Reset vector at $FFFC  (where the program starts)
    .word Start             ; Interrupt vector at $FFFE (unused in the VCS)