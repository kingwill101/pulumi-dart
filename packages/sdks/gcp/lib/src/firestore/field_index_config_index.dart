// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FieldIndexConfigIndex {
  /// Indicates that this field supports operations on arrayValues. Only one of `order` and `arrayConfig` can
  /// be specified.
  /// Possible values are: `CONTAINS`.
  final pulumi.Input<String>? arrayConfig;
  /// Indicates that this field supports ordering by the specified order or comparing using =, &lt;, &lt;=, &gt;, &gt;=, !=.
  /// Only one of `order` and `arrayConfig` can be specified.
  /// Possible values are: `ASCENDING`, `DESCENDING`.
  final pulumi.Input<String>? order;
  /// The scope at which a query is run. Collection scoped queries require you specify
  /// the collection at query time. Collection group scope allows queries across all
  /// collections with the same id.
  /// Default value is `COLLECTION`.
  /// Possible values are: `COLLECTION`, `COLLECTION_GROUP`.
  final pulumi.Input<String>? queryScope;

  /// Creates a new [FieldIndexConfigIndex].
  /// [arrayConfig] Indicates that this field supports operations on arrayValues. Only one of `order` and `arrayConfig` can
  /// [order] Indicates that this field supports ordering by the specified order or comparing using =, &lt;, &lt;=, &gt;, &gt;=, !=.
  /// [queryScope] The scope at which a query is run. Collection scoped queries require you specify
  const FieldIndexConfigIndex({
    this.arrayConfig,
    this.order,
    this.queryScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arrayConfig': ?arrayConfig,
      'order': ?order,
      'queryScope': ?queryScope,
    };
  }

  factory FieldIndexConfigIndex.fromMap(Map<String, dynamic> map) {
    return FieldIndexConfigIndex(
      arrayConfig: (() { final guardedValue = map['arrayConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queryScope: (() { final guardedValue = map['queryScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
