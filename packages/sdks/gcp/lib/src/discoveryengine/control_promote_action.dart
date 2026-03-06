// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_promote_action_search_link_promotion.dart';

class ControlPromoteAction {
  /// The data store to promote.
  final pulumi.Input<String> dataStore;
  /// The search link promotion to apply to the search results.
  /// Structure is documented below.
  final pulumi.Input<ControlPromoteActionSearchLinkPromotion> searchLinkPromotion;

  /// Creates a new [ControlPromoteAction].
  /// [dataStore] The data store to promote.
  /// [searchLinkPromotion] The search link promotion to apply to the search results.
  const ControlPromoteAction({
    required this.dataStore,
    required this.searchLinkPromotion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStore': dataStore,
      'searchLinkPromotion': pulumi.Input.mapInputValue<ControlPromoteActionSearchLinkPromotion, Map<String, dynamic>>(searchLinkPromotion, (value) => value.toMap()),
    };
  }

  factory ControlPromoteAction.fromMap(Map<String, dynamic> map) {
    return ControlPromoteAction(
      dataStore: pulumi.Input.fromValue(map['dataStore'] as String),
      searchLinkPromotion: pulumi.Input.fromValue(ControlPromoteActionSearchLinkPromotion.fromMap((map['searchLinkPromotion']! as Map).cast<String, dynamic>())),
    );
  }
}

