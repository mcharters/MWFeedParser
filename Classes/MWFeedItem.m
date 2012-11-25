//
//  MWFeedItem.m
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

#import "MWFeedItem.h"

#define EXCERPT(str, len) (([str length] > len) ? [[str substringToIndex:len-1] stringByAppendingString:@"…"] : str)

@implementation MWFeedItem

#pragma mark NSObject

- (NSString *)description {
	NSMutableString *string = [[NSMutableString alloc] initWithString:@"MWFeedItem: "];
	if (self.title)   [string appendFormat:@"“%@”", EXCERPT(self.title, 50)];
	if (self.date)    [string appendFormat:@" - %@", self.date];
	//if (link)    [string appendFormat:@" (%@)", link];
	//if (summary) [string appendFormat:@", %@", EXCERPT(summary, 50)];
	return string;
}

#pragma mark NSCoding

- (id)initWithCoder:(NSCoder *)decoder {
	if ((self = [super init])) {
		_identifier = [decoder decodeObjectForKey:@"identifier"];
		_title = [decoder decodeObjectForKey:@"title"];
		_link = [decoder decodeObjectForKey:@"link"];
		_date = [decoder decodeObjectForKey:@"date"];
		_updated = [decoder decodeObjectForKey:@"updated"];
		_summary = [decoder decodeObjectForKey:@"summary"];
		_content = [decoder decodeObjectForKey:@"content"];
		_enclosures = [decoder decodeObjectForKey:@"enclosures"];
	}
	return self;
}

- (void)encodeWithCoder:(NSCoder *)encoder {
	if (self.identifier) [encoder encodeObject:self.identifier forKey:@"identifier"];
	if (self.title) [encoder encodeObject:self.title forKey:@"title"];
	if (self.link) [encoder encodeObject:self.link forKey:@"link"];
	if (self.date) [encoder encodeObject:self.date forKey:@"date"];
	if (self.updated) [encoder encodeObject:self.updated forKey:@"updated"];
	if (self.summary) [encoder encodeObject:self.summary forKey:@"summary"];
	if (self.content) [encoder encodeObject:self.content forKey:@"content"];
	if (self.enclosures) [encoder encodeObject:self.enclosures forKey:@"enclosures"];
}

@end
