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
  EdgeCacheOriginOriginOverrideAction({
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
      headerAction: map['headerAction'] == null ? null : (EdgeCacheOriginOriginOverrideActionHeaderAction.fromMap((map['headerAction']! as Map).cast<String, dynamic>())).input(),
      urlRewrite: map['urlRewrite'] == null ? null : (EdgeCacheOriginOriginOverrideActionUrlRewrite.fromMap((map['urlRewrite']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

