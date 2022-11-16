Create Procedure [storeEvent] ([id] )
Begin
    version = SELECT version from aggregates where AggregateId = id
    if version is null
        Insert into aggregates
        version = 0
    end
    if expectedversion != version
        raise concurrency problem
    foreach event
        insert event with incremented version number
    update aggregate with last version number
End Transaction