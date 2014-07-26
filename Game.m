//
//  Game.m
//  babatunde ios project
//
//  Created by macadmin on 2014-07-25.
//  Copyright (c) 2014 macadmin. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game



-(void)RightAnswer{
    
    ScoreNumber = ScoreNumber +1;
    Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
    NextCategory.hidden =NO;
    Answer1.hidden = YES;
    Answer2.hidden = YES;
    Answer3.hidden = YES;
    Answer4.hidden = YES;
    QuestionText.hidden = YES;
    CategorySelected.hidden =YES;
    Result.hidden =NO;
    Result.image = [UIImage imageNamed:@"right.png"];
    
}




-(void)WrongAnswer{
    LivesNumber = LivesNumber - 1;
    Lives.text= [NSString stringWithFormat:@"%i", LivesNumber];
    NextCategory.hidden =NO;
    Answer1.hidden = YES;
    Answer2.hidden = YES;
    Answer3.hidden = YES;
    Answer4.hidden = YES;
    QuestionText.hidden = YES;
    CategorySelected.hidden =YES;
    Result.hidden = NO;
    Result.image = [UIImage imageNamed:@"wrong.png"];
    
    if (LivesNumber == 0) {
        Result.image = [UIImage imageNamed:@"gameover.png"];
        NextCategory.hidden =YES;
        Exit.hidden = NO;
        GameInProgress = NO;
    }

    
}





-(IBAction)Answer1:(id)sender{
    if (Answer1Correct == YES) {
        [self RightAnswer];
    }
    else{
        [self WrongAnswer];
    
}
}
-(IBAction)Answer2:(id)sender{
    
    if (Answer2Correct == YES) {
        [self RightAnswer];
    }
    else{
        [self WrongAnswer];
        
    }
    
}
-(IBAction)Answer3:(id)sender{
    
    if (Answer3Correct == YES) {
        [self RightAnswer];
    }
    else{
        [self WrongAnswer];
        
    }
    
}
-(IBAction)Answer4:(id)sender{
    
    if (Answer4Correct == YES) {
        [self RightAnswer];
    }
    else{
        [self WrongAnswer];
        
    }
}

-(void) Category1{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Which countary won the 2014 World cup?"];
            [Answer1 setTitle:@"Brazil" forState:UIControlStateNormal];
            [Answer2 setTitle:@"liverpool" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Germany" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Iran" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Which countary came second the 2014 World cup?"];
            [Answer1 setTitle:@"Brazil" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Argentina" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Germany" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Iran" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Which football club won the 2012/2013 English league?"];
            [Answer1 setTitle:@"Manchester United" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Manchester City" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Germany" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Liverpool" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Which countary came third the 2014 World cup?"];
            [Answer1 setTitle:@"Brazil" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Argentina" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Germany" forState:UIControlStateNormal];
            [Answer4 setTitle:@"NETHERLAND" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        default:
            break;
    }
    
}
-(void) Category2{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Which Of These Superheroes Were Not In The 2012 Film: The Avengers?"];
            [Answer1 setTitle:@"Spiderman" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Iron Man" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The Hulk" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Hawk Eye" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"In What Year Was Toy Story 1 Released In Cinemas?"];
            [Answer1 setTitle:@"1994" forState:UIControlStateNormal];
            [Answer2 setTitle:@"1995" forState:UIControlStateNormal];
            [Answer3 setTitle:@"1996" forState:UIControlStateNormal];
            [Answer4 setTitle:@"1997" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Who Directed Snakes On A Plane?"];
            [Answer1 setTitle:@"Ryan Wheeler" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Matt Heaney" forState:UIControlStateNormal];
            [Answer3 setTitle:@"David R. Ellis" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Gina Jepson" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Will, Jay, Simon and Neil Are The Main Characters In What 2011 Movie?"];
            [Answer1 setTitle:@"Drive" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Thor" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Mad Men" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The Inbetweeners" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        default:
            break;
}
}

-(void) Category3{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Who Won The First Series Of 'X-Factor (UK)'?"];
            [Answer1 setTitle:@"Steve Brookstein" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Ray Quinn" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Matt Heaney" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Ryan Baxter" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Who Won The Award For Best British Band At The BRITS 2013?"];
            [Answer1 setTitle:@"One Direction" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Mumford and Sons" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Coldplay" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Oasis" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Who Won The 2013 Eurovision Song Contest?"];
            [Answer1 setTitle:@"Iceland" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Matt Heaney" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Denmark " forState:UIControlStateNormal];
            [Answer4 setTitle:@"Gina Jepson" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"The Album Yours truly, Angry Mob Is By What Band?"];
            [Answer1 setTitle:@"Drive" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Thor" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Mad Men" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The Kaiser Chiefs" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        default:
            break;
    }
    
}

-(void) Category4{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Who Is The Main Character In The Uncharted Gaming Series?"];
            [Answer1 setTitle:@"Steve Brookstein" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Nathan Drake " forState:UIControlStateNormal];
            [Answer3 setTitle:@"Matt Heaney" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Ryan Baxter" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"In What Gaming Series Does Lara Craft Appear?"];
            [Answer1 setTitle:@"One Direction" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Tomb Raider " forState:UIControlStateNormal];
            [Answer3 setTitle:@"Coldplay" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Oasis" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Which GTA Game Was Released In 2013?"];
            [Answer1 setTitle:@"2" forState:UIControlStateNormal];
            [Answer2 setTitle:@"4" forState:UIControlStateNormal];
            [Answer3 setTitle:@"5" forState:UIControlStateNormal];
            [Answer4 setTitle:@"6" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"What Is The Most Successful iPhone App?"];
            [Answer1 setTitle:@"Drive" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Temple Run" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Mad Men" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Angry Birds" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        default:
            break;
}
}
-(void) Category5{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"What Is The Capital City Of Latvia?"];
            [Answer1 setTitle:@"Steve Brookstein" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Riga " forState:UIControlStateNormal];
            [Answer3 setTitle:@"Matt Heaney" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Ryan Baxter" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"The United Kingdom and USA Are Separated By What Ocean?"];
            [Answer1 setTitle:@"One Direction" forState:UIControlStateNormal];
            [Answer2 setTitle:@" Atlantic  " forState:UIControlStateNormal];
            [Answer3 setTitle:@"Pacific" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Oasis" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Which Of These Countries Does Not Boarder Germany?"];
            [Answer1 setTitle:@"Denmark" forState:UIControlStateNormal];
            [Answer2 setTitle:@"France" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Spain " forState:UIControlStateNormal];
            [Answer4 setTitle:@"NIGERIA" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
            
        case 3:
                                 QuestionText.text = [NSString stringWithFormat:@"What Is The World's Largest River?"];
            [Answer1 setTitle:@"Yangtze" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Temple Run" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Volga" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The Amazon " forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        default:
            break;
}
}
-(void) Category6{
    
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Who Was Henry VIII's Second Wife?"];
            [Answer1 setTitle:@"Steve Brookstein" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Anne Boleyn " forState:UIControlStateNormal];
            [Answer3 setTitle:@"Matt Heaney" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Ryan Baxter" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"In What Year Did World War 1 End?"];
            [Answer1 setTitle:@"One Direction" forState:UIControlStateNormal];
            [Answer2 setTitle:@" 1918  " forState:UIControlStateNormal];
            [Answer3 setTitle:@"Pacific" forState:UIControlStateNormal];
            [Answer4 setTitle:@"1916" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
            
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"In What Year Was The Eiffel Tower Opened?"];
                                 [Answer1 setTitle:@"1772" forState:UIControlStateNormal];
                                 [Answer2 setTitle:@"1990" forState:UIControlStateNormal];
                                 [Answer3 setTitle:@"1889 " forState:UIControlStateNormal];
                                 [Answer4 setTitle:@"1906" forState:UIControlStateNormal];
                                 Answer3Correct = YES;
                                 break;
                                 
                                 
        case 3:
            QuestionText.text = [NSString stringWithFormat:@" Which Us President Was Nicknamed'TrickyDicky'?"];
            [Answer1 setTitle:@"Yangtze" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Grover Cleveland" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Volga" forState:UIControlStateNormal];
           [Answer4 setTitle:@"Richard Nixon  " forState:UIControlStateNormal];
            Answer4Correct = YES;
                                 break;
                            default:
                                 break;
    
    }
}



- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    if (GameInProgress ==NO) {
        LivesNumber = 3;
        ScoreNumber = 0;
        GameInProgress = YES;
        
    }
    
    
    Result.hidden = YES;
    Exit.hidden = YES;
    NextCategory.hidden = YES;
    
    Lives.text = [NSString stringWithFormat:@"%i", LivesNumber];
    Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
    
    
    
    Answer1Correct = NO;
    Answer2Correct = NO;
    Answer3Correct = NO;
    Answer4Correct = NO;
    
    CategoryLoaded = [[NSUserDefaults standardUserDefaults] integerForKey:@"categorySaved"];
    QuestionSelected = arc4random() %4;
    
    switch (CategoryLoaded) {
        case 1:
            CategorySelected.text = [NSString stringWithFormat:@"Sport"];
            [self Category1];
            break;
        case 2:
            CategorySelected.text = [NSString stringWithFormat:@"Films"];
            [self Category2];
            break;
        case 3:
            CategorySelected.text = [NSString stringWithFormat:@"Music"];
            [self Category3];
            break;
        case 4:
            CategorySelected.text = [NSString stringWithFormat:@"Gmaes"];
            [self Category4];
            break;
        case 5:
            CategorySelected.text = [NSString stringWithFormat:@"Geography"];
            [self Category5];
            break;
        case 6:
            CategorySelected.text = [NSString stringWithFormat:@"History"];
            [self Category6];
            break;
            
        default:
            break;
    }
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
