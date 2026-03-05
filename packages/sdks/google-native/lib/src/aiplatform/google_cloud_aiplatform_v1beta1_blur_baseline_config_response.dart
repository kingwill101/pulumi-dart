// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Config for blur baseline. When enabled, a linear path from the maximally blurred image to the input image is created. Using a blurred baseline instead of zero (black image) is motivated by the BlurIG approach explained here: https://arxiv.org/abs/2004.03383
class GoogleCloudAiplatformV1beta1BlurBaselineConfigResponse {
  /// The standard deviation of the blur kernel for the blurred baseline. The same blurring parameter is used for both the height and the width dimension. If not set, the method defaults to the zero (i.e. black for images) baseline.
  final pulumi.Input<double> maxBlurSigma;

  /// Creates a new [GoogleCloudAiplatformV1beta1BlurBaselineConfigResponse].
  /// [maxBlurSigma] The standard deviation of the blur kernel for the blurred baseline. The same blurring parameter is used for both the height and the width dimension. If not set, the method defaults to the zero (i.e. black for images) baseline.
  GoogleCloudAiplatformV1beta1BlurBaselineConfigResponse({
    required this.maxBlurSigma,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxBlurSigma': maxBlurSigma,
    };
  }

  factory GoogleCloudAiplatformV1beta1BlurBaselineConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1BlurBaselineConfigResponse(
      maxBlurSigma: pulumi.Input.fromValue(map['maxBlurSigma'] as double),
    );
  }
}

