// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SupportEventSubscription resources.
class SupportEventSubscriptionState {
  /// The time at which the subscription was created.
  final pulumi.Input<String>? createTime;
  /// The time at which the subscription was deleted.
  final pulumi.Input<String>? deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Reason why subscription is failing. State of subscription
  /// must be FAILING in order for this to have a value.
  /// Possible values:
  /// PERMISSION_DENIED
  /// TOPIC_NOT_FOUND
  /// OTHER
  final pulumi.Input<String>? failureReason;
  /// Identifier. The resource name of the support event subscription.
  final pulumi.Input<String>? name;
  /// The organization ID for the support event subscription.
  final pulumi.Input<String>? organization;
  /// The name of the Pub/Sub topic to publish notifications to.
  /// Format: projects/{project}/topics/{topic}
  final pulumi.Input<String>? pubSubTopic;
  /// The time at which the subscription will be purged.
  final pulumi.Input<String>? purgeTime;
  /// The state of the subscription.
  /// Possible values:
  /// WORKING
  /// FAILING
  /// DELETED
  final pulumi.Input<String>? state;
  /// The time at which the subscription was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [SupportEventSubscriptionState].
  /// [createTime] The time at which the subscription was created.
  /// [deleteTime] The time at which the subscription was deleted.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [failureReason] Reason why subscription is failing. State of subscription
  /// [name] Identifier. The resource name of the support event subscription.
  /// [organization] The organization ID for the support event subscription.
  /// [pubSubTopic] The name of the Pub/Sub topic to publish notifications to.
  /// [purgeTime] The time at which the subscription will be purged.
  /// [state] The state of the subscription.
  /// [updateTime] The time at which the subscription was last updated.
  const SupportEventSubscriptionState({
    this.createTime,
    this.deleteTime,
    this.deletionPolicy,
    this.failureReason,
    this.name,
    this.organization,
    this.pubSubTopic,
    this.purgeTime,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'deletionPolicy': ?deletionPolicy,
      'failureReason': ?failureReason,
      'name': ?name,
      'organization': ?organization,
      'pubSubTopic': ?pubSubTopic,
      'purgeTime': ?purgeTime,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory SupportEventSubscriptionState.fromMap(Map<String, dynamic> map) {
    return SupportEventSubscriptionState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organization: (() { final guardedValue = map['organization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pubSubTopic: (() { final guardedValue = map['pubSubTopic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      purgeTime: (() { final guardedValue = map['purgeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
