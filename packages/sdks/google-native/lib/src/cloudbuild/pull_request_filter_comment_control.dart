/// Configure builds to run whether a repository owner or collaborator need to comment `/gcbrun`.
enum PullRequestFilterCommentControl {
  commentsDisabled("COMMENTS_DISABLED"),
  commentsEnabled("COMMENTS_ENABLED"),
  commentsEnabledForExternalContributorsOnly(
    "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY",
  );

  const PullRequestFilterCommentControl(this.wireValue);
  final String wireValue;

  static PullRequestFilterCommentControl fromValue(String value) {
    for (final item in PullRequestFilterCommentControl.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown PullRequestFilterCommentControl value: $value',
    );
  }
}
