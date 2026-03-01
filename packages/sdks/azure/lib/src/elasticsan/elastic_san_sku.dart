// ignore_for_file: unused_element, unnecessary_cast


class ElasticSanSku {
  /// The SKU name. Possible values are `Premium_LRS` and `Premium_ZRS`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** `Premium_ZRS` SKU is only available in limited Azure regions including `France Central`, `North Europe`, `West Europe`, and `West US 2`. Please refer to this [document](https://azure.microsoft.com/updates/regional-expansion-azure-elastic-san-public-preview-is-now-available-in-more-regions) for more details.
  final String name;
  /// The SKU tier. The only possible value is `Premium`. Defaults to `Premium`.
  final String? tier;

  /// Creates a new [ElasticSanSku].
  /// [name] The SKU name. Possible values are `Premium_LRS` and `Premium_ZRS`. Changing this forces a new resource to be created.
  /// [tier] The SKU tier. The only possible value is `Premium`. Defaults to `Premium`.
  ElasticSanSku({
    required this.name,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': ?tier,
    };
  }

  factory ElasticSanSku.fromMap(Map<String, dynamic> map) {
    return ElasticSanSku(
      name: map['name'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

