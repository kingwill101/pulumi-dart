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
    this.customerEventName,
    required this.eventName,
    required this.receivers,
    required this.resourceGroupName,
    required this.testBaseAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerEventName': ?customerEventName,
      'eventName': eventName,
      'receivers':
          pulumi.Input.mapInputValue<
            List<NotificationEventReceiver>,
            List<Map<String, dynamic>>
          >(
            receivers,
            (value) =>
                pulumi.Input.encodeList<
                  NotificationEventReceiver,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceGroupName': resourceGroupName,
      'testBaseAccountName': testBaseAccountName,
    };
  }

  factory CustomerEventArgs.fromMap(Map<String, dynamic> map) {
    return CustomerEventArgs(
      customerEventName: (() {
        final guardedValue = map['customerEventName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventName: pulumi.Input.fromValue(map['eventName'] as String),
      receivers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<NotificationEventReceiver>(
          map['receivers']!,
          (value) => NotificationEventReceiver.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      testBaseAccountName: pulumi.Input.fromValue(
        map['testBaseAccountName'] as String,
      ),
    );
  }
}
