import 'package:pulumi/pulumi.dart' as pulumi;

/// The new job state.
enum MessageNewJobState implements pulumi.PulumiEnum<String> {
  stateUnspecified("STATE_UNSPECIFIED"),
  queued("QUEUED"),
  scheduled("SCHEDULED"),
  running("RUNNING"),
  succeeded("SUCCEEDED"),
  failed("FAILED"),
  deletionInProgress("DELETION_IN_PROGRESS");

  const MessageNewJobState(this.wireValue);
  @override
  final String wireValue;

  static MessageNewJobState fromValue(String value) {
    for (final item in MessageNewJobState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MessageNewJobState value: $value');
  }
}
