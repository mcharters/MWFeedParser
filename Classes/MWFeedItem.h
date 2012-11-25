//
//  MWFeedItem.h
//  MWFeedParser
//
//  Copyright (c) 2010 Michael Waterfall
//  
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//  
//  1. The above copyright notice and this permission notice shall be included
//     in all copies or substantial portions of the Software.
//  
//  2. This Software cannot be used to archive or collect data such as (but not
//     limited to) that of events, news, experiences and activities, for the 
//     purpose of any concept relating to diary/journal keeping.
//  
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

#import <Foundation/Foundation.h>

@interface MWFeedItem : NSObject <NSCoding>

@property (nonatomic, copy) NSString *identifier;   // Item identifier
@property (nonatomic, copy) NSString *title;        // Item title
@property (nonatomic, copy) NSString *link;         // Item URL
@property (nonatomic, copy) NSDate *date;           // Date the item was published
@property (nonatomic, copy) NSDate *updated;        // Date the item was updated if available
@property (nonatomic, copy) NSString *summary;      // Description of item
@property (nonatomic, copy) NSString *content;      // More detailed content (if available)

// Enclosures: Holds 1 or more item enclosures (i.e. podcasts, mp3. pdf, etc)
//  - NSArray of NSDictionaries with the following keys:
//     url: where the enclosure is located (NSString)
//     length: how big it is in bytes (NSNumber)
//     type: what its type is, a standard MIME type  (NSString)
@property (nonatomic, copy) NSArray *enclosures;

@end
