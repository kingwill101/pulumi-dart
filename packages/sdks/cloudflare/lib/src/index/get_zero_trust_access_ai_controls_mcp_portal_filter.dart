// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessAiControlsMcpPortalFilter {
  /// Search by id, name, hostname
  final pulumi.Input<String?>? search;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpPortalFilter].
  /// [search] Search by id, name, hostname
  const GetZeroTrustAccessAiControlsMcpPortalFilter({
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'search': ?search,
    };
  }

  factory GetZeroTrustAccessAiControlsMcpPortalFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpPortalFilter(
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
