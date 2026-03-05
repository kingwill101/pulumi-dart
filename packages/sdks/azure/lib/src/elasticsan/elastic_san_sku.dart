// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ElasticSanSku {
  /// The SKU name. Possible values are `Premium_LRS` and `Premium_ZRS`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `Premium_ZRS` SKU is only available in limited Azure regions including `France Central`, `North Europe`, `West Europe`, and `West US 2`. Please refer to this [document](https://azure.microsoft.com/updates/regional-expansion-azure-elastic-san-public-preview-is-now-available-in-more-regions) for more details.
  final pulumi.Input<String> name;
  /// The SKU tier. The only possible value is `Premium`. Defaults to `Premium`.
  final pulumi.Input<String>? tier;

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
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

