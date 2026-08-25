// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_github_pull_request.dart';
import 'trigger_github_push.dart';

class TriggerGithub {
  /// The resource name of the github enterprise config that should be applied to this installation.
  /// For example: "projects/{$projectId}/locations/{$locationId}/githubEnterpriseConfigs/{$configId}"
  final pulumi.Input<String?>? enterpriseConfigResourceName;
  /// Name of the repository. For example: The name for
  /// https://github.com/googlecloudplatform/cloud-builders is "cloud-builders".
  final pulumi.Input<String?>? name;
  /// Owner of the repository. For example: The owner for
  /// https://github.com/googlecloudplatform/cloud-builders is "googlecloudplatform".
  final pulumi.Input<String?>? owner;
  /// filter to match changes in pull requests. Specify only one of `pullRequest` or `push`.
  /// Structure is documented below.
  final pulumi.Input<TriggerGithubPullRequest?>? pullRequest;
  /// filter to match changes in refs, like branches or tags. Specify only one of `pullRequest` or `push`.
  /// Structure is documented below.
  final pulumi.Input<TriggerGithubPush?>? push;

  /// Creates a new [TriggerGithub].
  /// [enterpriseConfigResourceName] The resource name of the github enterprise config that should be applied to this installation.
  /// [name] Name of the repository. For example: The name for
  /// [owner] Owner of the repository. For example: The owner for
  /// [pullRequest] filter to match changes in pull requests. Specify only one of `pullRequest` or `push`.
  /// [push] filter to match changes in refs, like branches or tags. Specify only one of `pullRequest` or `push`.
  const TriggerGithub({
    this.enterpriseConfigResourceName,
    this.name,
    this.owner,
    this.pullRequest,
    this.push,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enterpriseConfigResourceName': ?enterpriseConfigResourceName,
      'name': ?name,
      'owner': ?owner,
      'pullRequest': ?pulumi.Input.mapOptionalInputValue<TriggerGithubPullRequest, Map<String, dynamic>>(pullRequest, (value) => value.toMap()),
      'push': ?pulumi.Input.mapOptionalInputValue<TriggerGithubPush, Map<String, dynamic>>(push, (value) => value.toMap()),
    };
  }

  factory TriggerGithub.fromMap(Map<String, dynamic> map) {
    return TriggerGithub(
      enterpriseConfigResourceName: (() { final guardedValue = map['enterpriseConfigResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pullRequest: (() { final guardedValue = map['pullRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerGithubPullRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      push: (() { final guardedValue = map['push']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TriggerGithubPush.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
