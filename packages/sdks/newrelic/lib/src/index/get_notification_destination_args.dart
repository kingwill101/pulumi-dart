// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_notification_destination_secure_url.dart';

/// {@template pulumi_index_get_notification_destination_get_notification_destination_args_doc}
/// Arguments for getNotificationDestination.
/// {@endtemplate}
/// {@macro pulumi_index_get_notification_destination_get_notification_destination_args_doc}
class GetNotificationDestinationArgs {
  /// The New Relic account ID to operate on.  This allows you to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  final pulumi.Input<String>? accountId;
  /// The id of the notification destination in New Relic.
  final pulumi.Input<String>? id;
  /// The name of the notification destination.
  ///
  /// Optional:
  final pulumi.Input<String>? name;
  /// The URL in secure format, showing only the `prefix`, as the `secure_suffix` is a secret.
  final pulumi.Input<List<GetNotificationDestinationSecureUrl>>? secureUrls;

  /// Creates a new [GetNotificationDestinationArgs].
  /// [accountId] The New Relic account ID to operate on.  This allows you to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`.
  /// [id] The id of the notification destination in New Relic.
  /// [name] The name of the notification destination.
  /// [secureUrls] The URL in secure format, showing only the `prefix`, as the `secure_suffix` is a secret.
  GetNotificationDestinationArgs({
    this.accountId,
    this.id,
    this.name,
    this.secureUrls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'id': ?id,
      'name': ?name,
      'secureUrls': ?pulumi.Input.mapOptionalInputValue<List<GetNotificationDestinationSecureUrl>, List<Map<String, dynamic>>>(secureUrls, (value) => pulumi.Input.encodeList<GetNotificationDestinationSecureUrl, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetNotificationDestinationArgs.fromMap(Map<String, dynamic> map) {
    return GetNotificationDestinationArgs(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      secureUrls: map['secureUrls'] == null ? null : (pulumi.Input.decodeList<GetNotificationDestinationSecureUrl>(map['secureUrls'], (value) => GetNotificationDestinationSecureUrl.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

