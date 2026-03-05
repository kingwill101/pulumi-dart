// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataMaskingStatisticsResponse {
  /// [Preview] Whether any accessed data was protected by data masking. The actual evaluation is done by accessStats.masked_field_count &gt; 0. Since this is only used for the discovery_doc generation purpose, as long as the type (boolean) matches, client library can leverage this. The actual evaluation of the variable is done else-where.
  final pulumi.Input<bool> dataMaskingApplied;

  /// Creates a new [DataMaskingStatisticsResponse].
  /// [dataMaskingApplied] [Preview] Whether any accessed data was protected by data masking. The actual evaluation is done by accessStats.masked_field_count &gt; 0. Since this is only used for the discovery_doc generation purpose, as long as the type (boolean) matches, client library can leverage this. The actual evaluation of the variable is done else-where.
  DataMaskingStatisticsResponse({
    required this.dataMaskingApplied,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataMaskingApplied': dataMaskingApplied,
    };
  }

  factory DataMaskingStatisticsResponse.fromMap(Map<String, dynamic> map) {
    return DataMaskingStatisticsResponse(
      dataMaskingApplied: pulumi.Input.fromValue(map['dataMaskingApplied'] as bool),
    );
  }
}

