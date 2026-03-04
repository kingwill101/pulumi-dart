// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trigger_repository_event_config_pull_request.dart';
import 'trigger_repository_event_config_push.dart';

class TriggerRepositoryEventConfig {
  /// Contains filter properties for matching Pull Requests.
  /// Structure is documented below.
  final pulumi.Input<TriggerRepositoryEventConfigPullRequest>? pullRequest;

  /// Contains filter properties for matching git pushes.
  /// Structure is documented below.
  final pulumi.Input<TriggerRepositoryEventConfigPush>? push;

  /// The resource name of the Repo API resource.
  final pulumi.Input<String>? repository;

  /// Creates a new [TriggerRepositoryEventConfig].
  /// [pullRequest] Contains filter properties for matching Pull Requests.
  /// [push] Contains filter properties for matching git pushes.
  /// [repository] The resource name of the Repo API resource.
  TriggerRepositoryEventConfig({this.pullRequest, this.push, this.repository});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pullRequest':
          ?pulumi.Input.mapOptionalInputValue<
            TriggerRepositoryEventConfigPullRequest,
            Map<String, dynamic>
          >(pullRequest, (value) => value.toMap()),
      'push':
          ?pulumi.Input.mapOptionalInputValue<
            TriggerRepositoryEventConfigPush,
            Map<String, dynamic>
          >(push, (value) => value.toMap()),
      'repository': ?repository,
    };
  }

  factory TriggerRepositoryEventConfig.fromMap(Map<String, dynamic> map) {
    return TriggerRepositoryEventConfig(
      pullRequest: (() {
        final guardedValue = map['pullRequest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TriggerRepositoryEventConfigPullRequest.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      push: (() {
        final guardedValue = map['push'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TriggerRepositoryEventConfigPush.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      repository: (() {
        final guardedValue = map['repository'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
