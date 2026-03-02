// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'put_alias_request_properties.dart';

/// {@template pulumi_subscription_alias_args_doc}
/// The set of arguments for Alias.
/// {@endtemplate}
/// {@macro pulumi_subscription_alias_args_doc}
class AliasArgs {
  /// AliasName is the name for the subscription creation request. Note that this is not the same as subscription name and this doesn’t have any other lifecycle need beyond the request for subscription creation.
  final pulumi.Input<String>? aliasName;
  /// Put alias request properties.
  final pulumi.Input<PutAliasRequestProperties>? properties;

  /// Creates a new [AliasArgs].
  /// [aliasName] AliasName is the name for the subscription creation request. Note that this is not the same as subscription name and this doesn’t have any other lifecycle need beyond the request for subscription creation.
  /// [properties] Put alias request properties.
  AliasArgs({
    this.aliasName,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasName': ?aliasName,
      'properties': ?pulumi.Input.mapOptionalInputValue<PutAliasRequestProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory AliasArgs.fromMap(Map<String, dynamic> map) {
    return AliasArgs(
      aliasName: map['aliasName'] == null ? null : (map['aliasName']! as String).input(),
      properties: map['properties'] == null ? null : (PutAliasRequestProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

