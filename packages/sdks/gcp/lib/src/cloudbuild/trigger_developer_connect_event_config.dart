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
  const TriggerDeveloperConnectEventConfig({
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
      gitRepositoryLink: pulumi.Input.fromValue(map['gitRepositoryLink'] as String),
      gitRepositoryLinkType: (() { final guardedValue = map['gitRepositoryLinkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pullRequest: (() { final guardedValue = map['pullRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerDeveloperConnectEventConfigPullRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      push: (() { final guardedValue = map['push']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerDeveloperConnectEventConfigPush.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

