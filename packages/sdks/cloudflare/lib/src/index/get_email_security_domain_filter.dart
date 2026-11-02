// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailSecurityDomainFilter {
  /// Currently active delivery mode to filter by.
  /// Available values: "DIRECT", "BCC", "JOURNAL", "API", "RETRO_SCAN".
  final pulumi.Input<String?>? activeDeliveryMode;
  /// Delivery mode to filter by.
  /// Available values: "DIRECT", "BCC", "JOURNAL", "API", "RETRO_SCAN".
  final pulumi.Input<String?>? allowedDeliveryMode;
  /// The sorting direction.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Domain names to filter by.
  final pulumi.Input<List<String>?>? domains;
  /// Integration ID to filter by.
  final pulumi.Input<String?>? integrationId;
  /// Field to sort by.
  /// Available values: "domain", "createdAt".
  final pulumi.Input<String?>? order;
  /// Search term for filtering records. Behavior may change.
  final pulumi.Input<String?>? search;
  /// Filters response to domains with the provided status.
  /// Available values: "PENDING", "ACTIVE", "FAILED", "TIMEOUT".
  final pulumi.Input<String?>? status;

  /// Creates a new [GetEmailSecurityDomainFilter].
  /// [activeDeliveryMode] Currently active delivery mode to filter by.
  /// [allowedDeliveryMode] Delivery mode to filter by.
  /// [direction] The sorting direction.
  /// [domains] Domain names to filter by.
  /// [integrationId] Integration ID to filter by.
  /// [order] Field to sort by.
  /// [search] Search term for filtering records. Behavior may change.
  /// [status] Filters response to domains with the provided status.
  const GetEmailSecurityDomainFilter({
    this.activeDeliveryMode,
    this.allowedDeliveryMode,
    this.direction,
    this.domains,
    this.integrationId,
    this.order,
    this.search,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDeliveryMode': ?activeDeliveryMode,
      'allowedDeliveryMode': ?allowedDeliveryMode,
      'direction': ?direction,
      'domains': ?domains,
      'integrationId': ?integrationId,
      'order': ?order,
      'search': ?search,
      'status': ?status,
    };
  }

  factory GetEmailSecurityDomainFilter.fromMap(Map<String, dynamic> map) {
    return GetEmailSecurityDomainFilter(
      activeDeliveryMode: (() { final guardedValue = map['activeDeliveryMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowedDeliveryMode: (() { final guardedValue = map['allowedDeliveryMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      integrationId: (() { final guardedValue = map['integrationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
