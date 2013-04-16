hu.liu.pos = scan ('positive-words.txt', what = 'character', comment.char = ';')
hu.liu.neg = scan ('negative-words.txt', what = 'character',  comment.char = ';')
pos.words = c (hu.liu.pos, 'upgrade')
neg.words = c (hu.liu.neg, 'wtf', 'wait', 'waiting', 'epicfail', 'mechanical')
