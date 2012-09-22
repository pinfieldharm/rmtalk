- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath  {
    static NSString *CellIdentifier = @"TimeZoneCell";
 
    TimeZoneCell *timeZoneCell = (TimeZoneCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (timeZoneCell == nil) {
        timeZoneCell = [[[TimeZoneCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
        timeZoneCell.frame = CGRectMake(0.0, 0.0, 320.0, ROW_HEIGHT);
    }
    Region *region = [displayList objectAtIndex:indexPath.section];
    NSArray *regionTimeZones = region.timeZoneWrappers;
    [timeZoneCell setTimeZoneWrapper:[regionTimeZones objectAtIndex:indexPath.row]];
    return timeZoneCell;
}