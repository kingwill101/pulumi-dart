// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_developer_connect_event_config_pull_request.dart';
import 'trigger_developer_connect_event_config_push.dart';

class TriggerDeveloperConnectEventConfig {
  /// The Developer Connect Git repository link, formatted as `projects/*/locations/*/connections/*/gitRepositoryLink/*`.
  final pulumi.Input<String> gitRepositoryLink;
  /// (Output)
  /// The type of DeveloperConnect GitRepositoryLink.
  final pulumi.Input<String>? gitRepositoryLinkType;
  /// Filter to match changes in pull requests.
  /// Structure is documented below.
  final pulumi.Input<TriggerDeveloperConnectEventConfigPullRequest>? pullRequest;
  /// Filter to match changes in refs like branches and tags.
  /// Structure is documented below.
  final pulumi.Input<TriggerDeveloperConnectEventConfigPush>? push;

  /// Creates a new [TriggerDeveloperConnectEventConfig].
  /// [gitRepositoryLink] The Developer Connect Git repository link, formatted as `projects/*/locations/*/connections/*/gitRepositoryLink/*`.
  /// [gitRepositoryLinkType] (Output)
  /// [pullRequest] Filter to match changes in pull requests.
  /// [push] Filter to match changes in refs like branches and tags.
  TriggerDeveloperConnectEventConfig({
    required this.gitRepositoryLink,
    this.gitRepositoryLinkType,
    this.pullRequest,
    this.push,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitRepositoryLink': gitRepositoryLink,
      'gitRepositoryLinkType': ?gitRepositoryLinkType,
      'pullRequest': ?pulumi.Input.mapOptionalInputValue<TriggerDeveloperConnectEventConfigPullRequest, Map<String, dynamic>>(pullRequest, (value) => value.toMap()),
      'push': ?pulumi.Input.mapOptionalInputValue<TriggerDeveloperConnectEventConfigPush, Map<String, dynamic>>(push, (value) => value.toMap()),
    };
  }

  factory TriggerDeveloperConnectEventConfig.fromMap(Map<String, dynamic> map) {
    return TriggerDeveloperConnectEventConfig(
      gitRepositoryLink: (map['gitRepositoryLink'] as String).input(),
      gitRepositoryLinkType: map['gitRepositoryLinkType'] == null ? null : (map['gitRepositoryLinkType']! as String).input(),
      pullRequest: map['pullRequest'] == null ? null : (TriggerDeveloperConnectEventConfigPullRequest.fromMap((map['pullRequest']! as Map).cast<String, dynamic>())).input(),
      push: map['push'] == null ? null : (TriggerDeveloperConnectEventConfigPush.fromMap((map['push']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

