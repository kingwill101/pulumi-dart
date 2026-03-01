// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_event_receiver.dart';

/// {@template pulumi_testbase_customer_event_args_doc}
/// The set of arguments for CustomerEvent.
/// {@endtemplate}
/// {@macro pulumi_testbase_customer_event_args_doc}
class CustomerEventArgs {
  /// The resource name of the Test Base Customer event.
  final pulumi.Input<String>? customerEventName;
  /// The name of the event subscribed to.
  final pulumi.Input<String> eventName;
  /// The notification event receivers.
  final pulumi.Input<List<NotificationEventReceiver>> receivers;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;

  /// Creates a new [CustomerEventArgs].
  /// [customerEventName] The resource name of the Test Base Customer event.
  /// [eventName] The name of the event subscribed to.
  /// [receivers] The notification event receivers.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  CustomerEventArgs({
    pulumi.Output<String>? customerEventName,
    required pulumi.Output<String> eventName,
    required pulumi.Output<List<NotificationEventReceiver>> receivers,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> testBaseAccountName,
  }) :
      customerEventName = pulumi.Input.asOptionalInput<String>(customerEventName),
      eventName = pulumi.Input.asInput<String>(eventName),
      receivers = pulumi.Input.asInput<List<NotificationEventReceiver>>(receivers),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      testBaseAccountName = pulumi.Input.asInput<String>(testBaseAccountName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerEventName': ?customerEventName,
      'eventName': eventName,
      'receivers': pulumi.Input.mapInputValue<List<NotificationEventReceiver>, List<Map<String, dynamic>>>(receivers, (value) => pulumi.Input.encodeList<NotificationEventReceiver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'testBaseAccountName': testBaseAccountName,
    };
  }

  factory CustomerEventArgs.fromMap(Map<String, dynamic> map) {
    return CustomerEventArgs(
      customerEventName: map['customerEventName'] == null ? null : pulumi.Output.create<String>(map['customerEventName'] as String),
      eventName: pulumi.Output.create<String>(map['eventName'] as String),
      receivers: pulumi.Output.create<List<NotificationEventReceiver>>(pulumi.Input.decodeList<NotificationEventReceiver>(map['receivers'], (value) => NotificationEventReceiver.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      testBaseAccountName: pulumi.Output.create<String>(map['testBaseAccountName'] as String),
    );
  }
}

