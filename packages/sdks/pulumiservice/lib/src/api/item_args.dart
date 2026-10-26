// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_services_item_args_doc}
/// The set of arguments for Item.
/// {@endtemplate}
/// {@macro pulumi_api_services_item_args_doc}
class ItemArgs {
  /// List of items
  final pulumi.Input<List<dynamic>> items;
  /// Maximum number of items to return on the first page (max 1000)
  final pulumi.Input<int?>? maxResults;
  /// The organization name
  final pulumi.Input<String> orgName;
  /// The owner name
  final pulumi.Input<String> ownerName;
  /// The owner type
  final pulumi.Input<String> ownerType;
  /// The service name
  final pulumi.Input<String> serviceName;

  /// Creates a new [ItemArgs].
  /// [items] List of items
  /// [maxResults] Maximum number of items to return on the first page (max 1000)
  /// [orgName] The organization name
  /// [ownerName] The owner name
  /// [ownerType] The owner type
  /// [serviceName] The service name
  const ItemArgs({
    required this.items,
    this.maxResults,
    required this.orgName,
    required this.ownerName,
    required this.ownerType,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': items,
      'maxResults': ?maxResults,
      'orgName': orgName,
      'ownerName': ownerName,
      'ownerType': ownerType,
      'serviceName': serviceName,
    };
  }

  factory ItemArgs.fromMap(Map<String, dynamic> map) {
    return ItemArgs(
      items: pulumi.Input.fromValue((map['items'] as List).cast<dynamic>()),
      maxResults: (() { final guardedValue = map['maxResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
      ownerName: pulumi.Input.fromValue(map['ownerName'] as String),
      ownerType: pulumi.Input.fromValue(map['ownerType'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
