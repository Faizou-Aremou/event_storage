create table Events (
    AggregateId CHAR(16),
    Data BLOB,
    Version INT(10),
    SequenceNumber BIGINT,
    constraint pk_Events_Version_AggregateId primary key (Version, AggregateId),
    constraint fk_Events_AggregateId foreign key (AggregateId) references Aggregates (AggregateId),
    constraint Unique_Events_SequenceNumber unique (SequenceNumber)
);

create table Aggregates (
    AggregateId CHAR(16),
    Type VARCHAR,
    Version INT(10),
    constraint pk_Aggregate_AggregateId primary key (AggregateId),
);

create table Snapshots (
    AggregateId CHAR(16),
    SerializedData BLOB,
    Version INT(10),
    constraint pk_Snapshots_Version_AggregateId primary key (Version, AggregateId),
)