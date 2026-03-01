// ignore_for_file: unused_element, unnecessary_cast


class InsightsConfigErrorDetail {
  /// (Output)
  /// A message with details about the error.
  final String? detailMessage;

  /// Creates a new [InsightsConfigErrorDetail].
  /// [detailMessage] (Output)
  InsightsConfigErrorDetail({
    this.detailMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'detailMessage': ?detailMessage,
    };
  }

  factory InsightsConfigErrorDetail.fromMap(Map<String, dynamic> map) {
    return InsightsConfigErrorDetail(
      detailMessage: map['detailMessage'] == null ? null : map['detailMessage'] as String,
    );
  }
}

