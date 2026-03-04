/// The status of the hunt.
enum Status {
  valueNew("New"),
  valueActive("Active"),
  valueClosed("Closed"),
  valueBacklog("Backlog"),
  valueApproved("Approved");

  const Status(this.wireValue);
  final String wireValue;

  static Status fromValue(String value) {
    for (final item in Status.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Status value: $value');
  }
}
