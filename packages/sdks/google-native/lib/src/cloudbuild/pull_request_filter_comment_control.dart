import 'package:pulumi/pulumi.dart' as pulumi;

/// Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
enum PullRequestFilterCommentControl implements pulumi.PulumiEnum<String> {
  commentsDisabled("COMMENTS_DISABLED"),
  commentsEnabled("COMMENTS_ENABLED"),
  commentsEnabledForExternalContributorsOnly("COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY");

  const PullRequestFilterCommentControl(this.wireValue);
  @override
  final String wireValue;

  static PullRequestFilterCommentControl fromValue(String value) {
    for (final item in PullRequestFilterCommentControl.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PullRequestFilterCommentControl value: $value');
  }
}
