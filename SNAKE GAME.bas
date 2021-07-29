score = 0
_TITLE "SNAKE GAME : SCORE: " + STR$(score)
SCREEN 12
DIM snake(1 TO 500, 0 TO 1) AS INTEGER
RANDOMIZE TIMER
fy = INT(RND * 26) + 3: fx = INT(RND * 75) + 3
x = 15: y = 3: died = 0
yd = 1: xd = 0: snakeLength = 1
DO

    keypress$ = INKEY$
    IF keypress$ = CHR$(0) + CHR$(72) THEN 'up
        xd = 0: yd = -1
    ELSEIF keypress$ = CHR$(0) + CHR$(80) THEN 'down
        xd = 0: yd = 1
    ELSEIF keypress$ = CHR$(0) + CHR$(77) THEN 'right
        xd = 1: yd = 0
    ELSEIF keypress$ = CHR$(0) + CHR$(75) THEN 'left
        xd = -1: yd = 0
    END IF



    x = x + xd
    y = y + yd


    'did snake just die   by hitting wall /boundry?
    IF x < 3 OR x > 77 THEN died = -1
    IF y < 2 OR y > 28 THEN died = -1

    ' did  snake run into itself
    FOR sn = 2 TO snakeLength
        IF y = snake(sn, 0) AND x = snake(sn, 1) THEN died = -1
    NEXT


    'did snake eat frut
    IF x = fx AND y = fy THEN
        score = score + 1
        _TITLE "SNAKE GAME : SCORE: " + STR$(score)
        WHILE fx = x AND fy = y
            fy = INT(RND * 26) + 3: fx = INT(RND * 75) + 3
        WEND
        snakeLength = snakeLength + 1

    END IF
    IF died THEN EXIT DO
    CLS
    'show garden
    LINE (10, 14)-(616, 448), 15, B

    'show frut
    LOCATE fy, fx: PRINT "X"
    'show snake
    snake(1, 0) = y: snake(1, 1) = x
    FOR sn = snakeLength TO 1 STEP -1
        snake(sn + 1, 0) = snake(sn, 0): snake(sn + 1, 1) = snake(sn, 1)
        LOCATE snake(sn, 0), snake(sn, 1): PRINT "Û"
    NEXT
    snake(1, 0) = y: snake(1, 1) = x
    LOCATE y, x: PRINT "Û"
    _DISPLAY
    _LIMIT 5
LOOP UNTIL keypress$ = CHR$(27)
