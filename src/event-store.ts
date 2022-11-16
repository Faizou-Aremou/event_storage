export type SaveChanges = (
  aggregateId: Guid,
  originatingVersion: Integer,
  events: IEnumerable<Event>
) => void;

export type GetEventsFor = (aggregateId: Guid) => IEnumerable<Event>;

export type Guid = string;
export type Integer = number;
export type IEnumerable<T> = Array<T>;
export type Event = {
  data: any;
};
