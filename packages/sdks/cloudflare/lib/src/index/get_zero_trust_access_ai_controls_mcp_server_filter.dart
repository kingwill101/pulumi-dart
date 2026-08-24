// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessAiControlsMcpServerFilter {
  /// Search by id, name
  final pulumi.Input<String?>? search;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpServerFilter].
  /// [search] Search by id, name
  const GetZeroTrustAccessAiControlsMcpServerFilter({
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'search': ?search,
    };
  }

  factory GetZeroTrustAccessAiControlsMcpServerFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpServerFilter(
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
