CellIdentifier = "TimeZoneCell"
def tableView(tableView, cellForRowAtIndexPath:indexPath)
  
  timeZoneCell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier)
  if (timeZoneCell == nil) {
    timeZoneCell = TimeZoneCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:CellIdentifier)
    timeZoneCell.frame = CGRectMake(0.0, 0.0, 320.0, ROW_HEIGHT)
  }
  region = displayList.objectAtIndex(indexPath.section)
  regionTimeZones = region.timeZoneWrappers
  timeZoneCell.setTimeZoneWrapper(regionTimeZones.objectAtIndex(indexPath.row))
  timeZoneCell
end


CellIdentifier = "TimeZoneCell"
def tableView(tableView, cellForRowAtIndexPath:indexPath)
  timeZoneCell = tableView.dequeueReusableCellWithIdentifier(CellIdentifier) || begin
    timeZoneCell = TimeZoneCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:CellIdentifier)
    timeZoneCell.frame = CGRectMake(0.0, 0.0, 320.0, ROW_HEIGHT)
    timeZoneCell
  end
  region = displayList[indexPath.section]
  regionTimeZones = region.timeZoneWrappers
  timeZoneCell.timeZoneWrapper = regionTimeZones[indexPath.row]
  timeZoneCell
end




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