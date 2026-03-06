// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The profile information for a double type field.
class GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfoResponse {
  /// Average of non-null values in the scanned data. NaN, if the field has a NaN.
  final pulumi.Input<double> average;
  /// Maximum of non-null values in the scanned data. NaN, if the field has a NaN.
  final pulumi.Input<double> max;
  /// Minimum of non-null values in the scanned data. NaN, if the field has a NaN.
  final pulumi.Input<double> min;
  /// A quartile divides the number of data points into four parts, or quarters, of more-or-less equal size. Three main quartiles used are: The first quartile (Q1) splits off the lowest 25% of data from the highest 75%. It is also known as the lower or 25th empirical quartile, as 25% of the data is below this point. The second quartile (Q2) is the median of a data set. So, 50% of the data lies below this point. The third quartile (Q3) splits off the highest 25% of data from the lowest 75%. It is known as the upper or 75th empirical quartile, as 75% of the data lies below this point. Here, the quartiles is provided as an ordered list of quartile values for the scanned data, occurring in order Q1, median, Q3.
  final pulumi.Input<List<double>> quartiles;
  /// Standard deviation of non-null values in the scanned data. NaN, if the field has a NaN.
  final pulumi.Input<double> standardDeviation;

  /// Creates a new [GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfoResponse].
  /// [average] Average of non-null values in the scanned data. NaN, if the field has a NaN.
  /// [max] Maximum of non-null values in the scanned data. NaN, if the field has a NaN.
  /// [min] Minimum of non-null values in the scanned data. NaN, if the field has a NaN.
  /// [quartiles] A quartile divides the number of data points into four parts, or quarters, of more-or-less equal size. Three main quartiles used are: The first quartile (Q1) splits off the lowest 25% of data from the highest 75%. It is also known as the lower or 25th empirical quartile, as 25% of the data is below this point. The second quartile (Q2) is the median of a data set. So, 50% of the data lies below this point. The third quartile (Q3) splits off the highest 25% of data from the lowest 75%. It is known as the upper or 75th empirical quartile, as 75% of the data lies below this point. Here, the quartiles is provided as an ordered list of quartile values for the scanned data, occurring in order Q1, median, Q3.
  /// [standardDeviation] Standard deviation of non-null values in the scanned data. NaN, if the field has a NaN.
  const GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfoResponse({
    required this.average,
    required this.max,
    required this.min,
    required this.quartiles,
    required this.standardDeviation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'average': average,
      'max': max,
      'min': min,
      'quartiles': quartiles,
      'standardDeviation': standardDeviation,
    };
  }

  factory GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfoResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1DataProfileResultProfileFieldProfileInfoDoubleFieldInfoResponse(
      average: pulumi.Input.fromValue(map['average'] as double),
      max: pulumi.Input.fromValue(map['max'] as double),
      min: pulumi.Input.fromValue(map['min'] as double),
      quartiles: pulumi.Input.fromValue((map['quartiles'] as List).cast<double>()),
      standardDeviation: pulumi.Input.fromValue(map['standardDeviation'] as double),
    );
  }
}

