// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecretsStoreSecretFilter {
  /// Direction to sort objects.
  /// Available values: "asc", "desc".
  final pulumi.Input<String> direction;
  /// Order secrets by values in the given field.
  /// Available values: "name", "comment", "created", "modified", "status".
  final pulumi.Input<String> order;
  /// Only secrets with the given scopes will be returned.
  final pulumi.Input<List<String>?>? scopes;
  /// Search secrets using a filter string, filtering across name and comment.
  final pulumi.Input<String?>? search;

  /// Creates a new [GetSecretsStoreSecretFilter].
  /// [direction] Direction to sort objects.
  /// [order] Order secrets by values in the given field.
  /// [scopes] Only secrets with the given scopes will be returned.
  /// [search] Search secrets using a filter string, filtering across name and comment.
  const GetSecretsStoreSecretFilter({
    required this.direction,
    required this.order,
    this.scopes,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'direction': direction,
      'order': order,
      'scopes': ?scopes,
      'search': ?search,
    };
  }

  factory GetSecretsStoreSecretFilter.fromMap(Map<String, dynamic> map) {
    return GetSecretsStoreSecretFilter(
      direction: pulumi.Input.fromValue(map['direction'] as String),
      order: pulumi.Input.fromValue(map['order'] as String),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
