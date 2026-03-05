// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trigger_developer_connect_event_config_pull_request.dart';
import 'get_trigger_developer_connect_event_config_push.dart';

class GetTriggerDeveloperConnectEventConfig {
  /// The Developer Connect Git repository link, formatted as 'projects/*/locations/*/connections/*/gitRepositoryLink/*'.
  final pulumi.Input<String> gitRepositoryLink;
  /// The type of DeveloperConnect GitRepositoryLink.
  final pulumi.Input<String> gitRepositoryLinkType;
  /// Filter to match changes in pull requests.
  final pulumi.Input<List<GetTriggerDeveloperConnectEventConfigPullRequest>> pullRequests;
  /// Filter to match changes in refs like branches and tags.
  final pulumi.Input<List<GetTriggerDeveloperConnectEventConfigPush>> pushes;

  /// Creates a new [GetTriggerDeveloperConnectEventConfig].
  /// [gitRepositoryLink] The Developer Connect Git repository link, formatted as 'projects/*/locations/*/connections/*/gitRepositoryLink/*'.
  /// [gitRepositoryLinkType] The type of DeveloperConnect GitRepositoryLink.
  /// [pullRequests] Filter to match changes in pull requests.
  /// [pushes] Filter to match changes in refs like branches and tags.
  GetTriggerDeveloperConnectEventConfig({
    required this.gitRepositoryLink,
    required this.gitRepositoryLinkType,
    required this.pullRequests,
    required this.pushes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gitRepositoryLink': gitRepositoryLink,
      'gitRepositoryLinkType': gitRepositoryLinkType,
      'pullRequests': pulumi.Input.mapInputValue<List<GetTriggerDeveloperConnectEventConfigPullRequest>, List<Map<String, dynamic>>>(pullRequests, (value) => pulumi.Input.encodeList<GetTriggerDeveloperConnectEventConfigPullRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pushes': pulumi.Input.mapInputValue<List<GetTriggerDeveloperConnectEventConfigPush>, List<Map<String, dynamic>>>(pushes, (value) => pulumi.Input.encodeList<GetTriggerDeveloperConnectEventConfigPush, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetTriggerDeveloperConnectEventConfig.fromMap(Map<String, dynamic> map) {
    return GetTriggerDeveloperConnectEventConfig(
      gitRepositoryLink: pulumi.Input.fromValue(map['gitRepositoryLink'] as String),
      gitRepositoryLinkType: pulumi.Input.fromValue(map['gitRepositoryLinkType'] as String),
      pullRequests: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTriggerDeveloperConnectEventConfigPullRequest>(map['pullRequests']!, (value) => GetTriggerDeveloperConnectEventConfigPullRequest.fromMap((value as Map).cast<String, dynamic>()))),
      pushes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTriggerDeveloperConnectEventConfigPush>(map['pushes']!, (value) => GetTriggerDeveloperConnectEventConfigPush.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

