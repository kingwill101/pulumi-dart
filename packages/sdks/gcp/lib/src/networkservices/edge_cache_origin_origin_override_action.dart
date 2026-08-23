// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_cache_origin_origin_override_action_header_action.dart';
import 'edge_cache_origin_origin_override_action_url_rewrite.dart';

class EdgeCacheOriginOriginOverrideAction {
  /// The header actions, including adding and removing
  /// headers, for request handled by this origin.
  /// Structure is documented below.
  final pulumi.Input<EdgeCacheOriginOriginOverrideActionHeaderAction>? headerAction;
  /// The URL rewrite configuration for request that are
  /// handled by this origin.
  /// Structure is documented below.
  final pulumi.Input<EdgeCacheOriginOriginOverrideActionUrlRewrite>? urlRewrite;

  /// Creates a new [EdgeCacheOriginOriginOverrideAction].
  /// [headerAction] The header actions, including adding and removing
  /// [urlRewrite] The URL rewrite configuration for request that are
  const EdgeCacheOriginOriginOverrideAction({
    this.headerAction,
    this.urlRewrite,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerAction': ?pulumi.Input.mapOptionalInputValue<EdgeCacheOriginOriginOverrideActionHeaderAction, Map<String, dynamic>>(headerAction, (value) => value.toMap()),
      'urlRewrite': ?pulumi.Input.mapOptionalInputValue<EdgeCacheOriginOriginOverrideActionUrlRewrite, Map<String, dynamic>>(urlRewrite, (value) => value.toMap()),
    };
  }

  factory EdgeCacheOriginOriginOverrideAction.fromMap(Map<String, dynamic> map) {
    return EdgeCacheOriginOriginOverrideAction(
      headerAction: (() { final guardedValue = map['headerAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EdgeCacheOriginOriginOverrideActionHeaderAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      urlRewrite: (() { final guardedValue = map['urlRewrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EdgeCacheOriginOriginOverrideActionUrlRewrite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
