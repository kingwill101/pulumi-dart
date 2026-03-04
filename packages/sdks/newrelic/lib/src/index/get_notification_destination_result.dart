// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_notification_destination_property.dart';
import 'get_notification_destination_secure_url.dart';

/// Result data returned by getNotificationDestination.
class GetNotificationDestinationResult {
  final String accountId;

  /// An indication whether the notification destination is active or not.
  final bool active;

  /// The unique entity identifier of the destination in New Relic.
  final String guid;
  final String? id;

  /// The name of the notification destination.
  final String? name;

  /// A nested block that describes a notification destination property.
  final List<GetNotificationDestinationProperty> properties;

  /// The URL in secure format, showing only the `prefix`, as the `secure_suffix` is a secret.
  final List<GetNotificationDestinationSecureUrl> secureUrls;

  /// The status of the notification destination.
  final String status;

  /// The notification destination type, either: `EMAIL`, `SERVICE_NOW`, `SERVICE_NOW_APP`, `WEBHOOK`, `JIRA`, `MOBILE_PUSH`, `EVENT_BRIDGE`, `PAGERDUTY_ACCOUNT_INTEGRATION` or `PAGERDUTY_SERVICE_INTEGRATION`, `SLACK`, `SLACK_COLLABORATION`, `MICROSOFT_TEAMS` and `WORKFLOW_AUTOMATION`.
  final String type;

  /// Creates a new [GetNotificationDestinationResult].
  /// [accountId] Required.
  /// [active] An indication whether the notification destination is active or not.
  /// [guid] The unique entity identifier of the destination in New Relic.
  /// [id] Optional.
  /// [name] The name of the notification destination.
  /// [properties] A nested block that describes a notification destination property.
  /// [secureUrls] The URL in secure format, showing only the `prefix`, as the `secure_suffix` is a secret.
  /// [status] The status of the notification destination.
  /// [type] The notification destination type, either: `EMAIL`, `SERVICE_NOW`, `SERVICE_NOW_APP`, `WEBHOOK`, `JIRA`, `MOBILE_PUSH`, `EVENT_BRIDGE`, `PAGERDUTY_ACCOUNT_INTEGRATION` or `PAGERDUTY_SERVICE_INTEGRATION`, `SLACK`, `SLACK_COLLABORATION`, `MICROSOFT_TEAMS` and `WORKFLOW_AUTOMATION`.
  GetNotificationDestinationResult({
    required this.accountId,
    required this.active,
    required this.guid,
    this.id,
    this.name,
    required this.properties,
    required this.secureUrls,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'active': active,
      'guid': guid,
      'id': ?id,
      'name': ?name,
      'properties':
          pulumi.Input.encodeList<
            GetNotificationDestinationProperty,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'secureUrls':
          pulumi.Input.encodeList<
            GetNotificationDestinationSecureUrl,
            Map<String, dynamic>
          >(secureUrls, (value) => value.toMap()),
      'status': status,
      'type': type,
    };
  }

  factory GetNotificationDestinationResult.fromMap(Map<String, dynamic> map) {
    return GetNotificationDestinationResult(
      accountId: map['accountId'] as String,
      active: map['active'] as bool,
      guid: map['guid'] as String,
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      properties: pulumi.Input.decodeList<GetNotificationDestinationProperty>(
        map['properties']!,
        (value) => GetNotificationDestinationProperty.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      secureUrls: pulumi.Input.decodeList<GetNotificationDestinationSecureUrl>(
        map['secureUrls']!,
        (value) => GetNotificationDestinationSecureUrl.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}
