GradientButton
==============

A subclass of UIButton. With gradient color.


##Usage

just like this:

    _seenButton = [[GradientButton alloc] initWithFrame:CGRectMake(165, 10, 145, 40)
                                           normalColors:[NSArray arrayWithObjects:
                                                         [ColorHelper colorForHex:@"#FCFCFC"],
                                                         [ColorHelper colorForHex:@"#EEEEEE"],
                                                         nil]
                                      highlightedColors:[NSArray arrayWithObjects:
                                                         [ColorHelper colorForHex:@"#EEEEEE"],
                                                         [ColorHelper colorForHex:@"#FCFCFC"],
                                                         nil]
                                         selectedColors:nil];