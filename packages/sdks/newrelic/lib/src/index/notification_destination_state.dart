// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'notification_destination_auth_basic.dart';
import 'notification_destination_auth_custom_header.dart';
import 'notification_destination_auth_token.dart';
import 'notification_destination_property.dart';
import 'notification_destination_secure_url.dart';

/// Input properties used for looking up and filtering NotificationDestination resources.
class NotificationDestinationState {
  /// Determines the New Relic account where the notification destination will be created. Defaults to the account associated with the API key used.
  final pulumi.Input<String>? accountId;
  /// Indicates whether the destination is active.
  final pulumi.Input<bool>? active;
  /// A nested block that describes a basic username and password authentication credentials. Only one auth_basic block is permitted per notification destination definition.  See Nested auth_basic blocks below for details.
  final pulumi.Input<NotificationDestinationAuthBasic>? authBasic;
  /// A nested block that describes a custom header authentication credentials. This field is required when the destination type is WORKFLOW_AUTOMATION and optional for other destination types. Multiple blocks are permitted per notification destination definition. Nested auth_custom_header blocks below for details.
  final pulumi.Input<List<NotificationDestinationAuthCustomHeader>>? authCustomHeaders;
  /// A nested block that describes a token authentication credentials. Only one auth_token block is permitted per notification destination definition.  See Nested auth_token blocks below for details.
  final pulumi.Input<NotificationDestinationAuthToken>? authToken;
  /// The unique entity identifier of the destination in New Relic.
  final pulumi.Input<String>? guid;
  /// The last time a notification was sent.
  final pulumi.Input<String>? lastSent;
  /// The name of the destination.
  final pulumi.Input<String>? name;
  /// A nested block that describes a notification destination property. See Nested property blocks below for details.
  final pulumi.Input<List<NotificationDestinationProperty>>? properties;
  /// A nested block that describes a URL that contains sensitive data at the path or parameters. Only one secure_url block is permitted per notification destination definition. See Nested secure_url blocks below for details.
  final pulumi.Input<NotificationDestinationSecureUrl>? secureUrl;
  /// The status of the destination.
  final pulumi.Input<String>? status;
  /// The type of destination.  One of: `EMAIL`, `SERVICE_NOW`, `SERVICE_NOW_APP`, `WEBHOOK`, `JIRA`, `MOBILE_PUSH`, `EVENT_BRIDGE`, `PAGERDUTY_ACCOUNT_INTEGRATION` or `PAGERDUTY_SERVICE_INTEGRATION`, `MICROSOFT_TEAMS`, `WORKFLOW_AUTOMATION`. The types `SLACK` and `SLACK_COLLABORATION` can only be imported, updated and destroyed (cannot be created via terraform).
  final pulumi.Input<String>? type;

  /// Creates a new [NotificationDestinationState].
  /// [accountId] Determines the New Relic account where the notification destination will be created. Defaults to the account associated with the API key used.
  /// [active] Indicates whether the destination is active.
  /// [authBasic] A nested block that describes a basic username and password authentication credentials. Only one auth_basic block is permitted per notification destination definition.  See Nested auth_basic blocks below for details.
  /// [authCustomHeaders] A nested block that describes a custom header authentication credentials. This field is required when the destination type is WORKFLOW_AUTOMATION and optional for other destination types. Multiple blocks are permitted per notification destination definition. Nested auth_custom_header blocks below for details.
  /// [authToken] A nested block that describes a token authentication credentials. Only one auth_token block is permitted per notification destination definition.  See Nested auth_token blocks below for details.
  /// [guid] The unique entity identifier of the destination in New Relic.
  /// [lastSent] The last time a notification was sent.
  /// [name] The name of the destination.
  /// [properties] A nested block that describes a notification destination property. See Nested property blocks below for details.
  /// [secureUrl] A nested block that describes a URL that contains sensitive data at the path or parameters. Only one secure_url block is permitted per notification destination definition. See Nested secure_url blocks below for details.
  /// [status] The status of the destination.
  /// [type] The type of destination.  One of: `EMAIL`, `SERVICE_NOW`, `SERVICE_NOW_APP`, `WEBHOOK`, `JIRA`, `MOBILE_PUSH`, `EVENT_BRIDGE`, `PAGERDUTY_ACCOUNT_INTEGRATION` or `PAGERDUTY_SERVICE_INTEGRATION`, `MICROSOFT_TEAMS`, `WORKFLOW_AUTOMATION`. The types `SLACK` and `SLACK_COLLABORATION` can only be imported, updated and destroyed (cannot be created via terraform).
  NotificationDestinationState({
    pulumi.Output<String>? accountId,
    pulumi.Output<bool>? active,
    pulumi.Output<NotificationDestinationAuthBasic>? authBasic,
    pulumi.Output<List<NotificationDestinationAuthCustomHeader>>? authCustomHeaders,
    pulumi.Output<NotificationDestinationAuthToken>? authToken,
    pulumi.Output<String>? guid,
    pulumi.Output<String>? lastSent,
    pulumi.Output<String>? name,
    pulumi.Output<List<NotificationDestinationProperty>>? properties,
    pulumi.Output<NotificationDestinationSecureUrl>? secureUrl,
    pulumi.Output<String>? status,
    pulumi.Output<String>? type,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      active = pulumi.Input.asOptionalInput<bool>(active),
      authBasic = pulumi.Input.asOptionalInput<NotificationDestinationAuthBasic>(authBasic),
      authCustomHeaders = pulumi.Input.asOptionalInput<List<NotificationDestinationAuthCustomHeader>>(authCustomHeaders),
      authToken = pulumi.Input.asOptionalInput<NotificationDestinationAuthToken>(authToken),
      guid = pulumi.Input.asOptionalInput<String>(guid),
      lastSent = pulumi.Input.asOptionalInput<String>(lastSent),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<List<NotificationDestinationProperty>>(properties),
      secureUrl = pulumi.Input.asOptionalInput<NotificationDestinationSecureUrl>(secureUrl),
      status = pulumi.Input.asOptionalInput<String>(status),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'active': ?active,
      'authBasic': ?pulumi.Input.mapOptionalInputValue<NotificationDestinationAuthBasic, Map<String, dynamic>>(authBasic, (value) => value.toMap()),
      'authCustomHeaders': ?pulumi.Input.mapOptionalInputValue<List<NotificationDestinationAuthCustomHeader>, List<Map<String, dynamic>>>(authCustomHeaders, (value) => pulumi.Input.encodeList<NotificationDestinationAuthCustomHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authToken': ?pulumi.Input.mapOptionalInputValue<NotificationDestinationAuthToken, Map<String, dynamic>>(authToken, (value) => value.toMap()),
      'guid': ?guid,
      'lastSent': ?lastSent,
      'name': ?name,
      'properties': ?pulumi.Input.mapOptionalInputValue<List<NotificationDestinationProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<NotificationDestinationProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secureUrl': ?pulumi.Input.mapOptionalInputValue<NotificationDestinationSecureUrl, Map<String, dynamic>>(secureUrl, (value) => value.toMap()),
      'status': ?status,
      'type': ?type,
    };
  }

  factory NotificationDestinationState.fromMap(Map<String, dynamic> map) {
    return NotificationDestinationState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      active: map['active'] == null ? null : pulumi.Output.create<bool>(map['active'] as bool),
      authBasic: map['authBasic'] == null ? null : pulumi.Output.create<NotificationDestinationAuthBasic>(NotificationDestinationAuthBasic.fromMap((map['authBasic'] as Map).cast<String, dynamic>())),
      authCustomHeaders: map['authCustomHeaders'] == null ? null : pulumi.Output.create<List<NotificationDestinationAuthCustomHeader>>(pulumi.Input.decodeList<NotificationDestinationAuthCustomHeader>(map['authCustomHeaders'], (value) => NotificationDestinationAuthCustomHeader.fromMap((value as Map).cast<String, dynamic>()))),
      authToken: map['authToken'] == null ? null : pulumi.Output.create<NotificationDestinationAuthToken>(NotificationDestinationAuthToken.fromMap((map['authToken'] as Map).cast<String, dynamic>())),
      guid: map['guid'] == null ? null : pulumi.Output.create<String>(map['guid'] as String),
      lastSent: map['lastSent'] == null ? null : pulumi.Output.create<String>(map['lastSent'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<List<NotificationDestinationProperty>>(pulumi.Input.decodeList<NotificationDestinationProperty>(map['properties'], (value) => NotificationDestinationProperty.fromMap((value as Map).cast<String, dynamic>()))),
      secureUrl: map['secureUrl'] == null ? null : pulumi.Output.create<NotificationDestinationSecureUrl>(NotificationDestinationSecureUrl.fromMap((map['secureUrl'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

