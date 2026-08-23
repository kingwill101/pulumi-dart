// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshScope {
  /// A list of namespace filters to limit which namespaces are
  /// synchronized from the remote catalog.
  ///
  /// &lt;a name="nestedFederatedCatalogOptionsRefreshStatus"&gt;&lt;/a&gt;The `refreshStatus` block contains:
  final pulumi.Input<List<String>>? namespaceFilters;

  /// Creates a new [IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshScope].
  /// [namespaceFilters] A list of namespace filters to limit which namespaces are
  const IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshScope({
    this.namespaceFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceFilters': ?namespaceFilters,
    };
  }

  factory IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshScope.fromMap(Map<String, dynamic> map) {
    return IcebergCatalogFederatedCatalogOptionsRefreshOptionsRefreshScope(
      namespaceFilters: (() { final guardedValue = map['namespaceFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
