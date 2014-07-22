//
//  SQLiteDBTask.h
//  RKMath
//
//  Created by Jyothirmai on 29/01/14.
//  Copyright (c) 2014 valuelabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LocationSQLiteDBTask : NSObject{
}

@property (strong, nonatomic) NSString *databasePathStr;
@property (strong, nonatomic) NSMutableDictionary *inputDictionary;
@property (strong, nonatomic) NSMutableDictionary *categoryTableDict;
@property (strong, nonatomic) NSMutableArray *categoryTableArr;

-(BOOL)checkForExistenceOfReocrdInDB:(NSString *)query;
- (void)storeDataToDatabase:(NSString *)query;
-(void)createTable:(NSString *)query;
-(NSMutableArray *)readDataFromLocationTrackerTablewithId:(NSString *)query;
-(NSMutableArray *)createDatabaseLocation:(int )indexpathrow;
-(NSMutableArray *)createDatabase;
-(NSMutableArray *)readDataFromCategoryTablewithId:(NSString *)query;

@end


