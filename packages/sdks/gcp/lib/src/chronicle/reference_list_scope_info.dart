// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reference_list_scope_info_reference_list_scope.dart';

class ReferenceListScopeInfo {
  /// ReferenceListScope specifies the list of scope names of the reference list.
  /// Structure is documented below.
  final pulumi.Input<ReferenceListScopeInfoReferenceListScope>? referenceListScope;

  /// Creates a new [ReferenceListScopeInfo].
  /// [referenceListScope] ReferenceListScope specifies the list of scope names of the reference list.
  ReferenceListScopeInfo({
    this.referenceListScope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceListScope': ?pulumi.Input.mapOptionalInputValue<ReferenceListScopeInfoReferenceListScope, Map<String, dynamic>>(referenceListScope, (value) => value.toMap()),
    };
  }

  factory ReferenceListScopeInfo.fromMap(Map<String, dynamic> map) {
    return ReferenceListScopeInfo(
      referenceListScope: map['referenceListScope'] == null ? null : (ReferenceListScopeInfoReferenceListScope.fromMap((map['referenceListScope'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

