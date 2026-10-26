import 'package:pulumi/pulumi.dart' as pulumi;

/// Deprecated. The job is only visible to the owner. The visibility of the job. Defaults to Visibility.ACCOUNT_ONLY if not specified.
enum JobVisibilityJobsV4 implements pulumi.PulumiEnum<String> {
  visibilityUnspecified("VISIBILITY_UNSPECIFIED"),
  accountOnly("ACCOUNT_ONLY"),
  sharedWithGoogle("SHARED_WITH_GOOGLE"),
  sharedWithPublic("SHARED_WITH_PUBLIC");

  const JobVisibilityJobsV4(this.wireValue);
  @override
  final String wireValue;

  static JobVisibilityJobsV4 fromValue(String value) {
    for (final item in JobVisibilityJobsV4.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JobVisibilityJobsV4 value: $value');
  }
}
