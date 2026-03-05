// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_blur_baseline_config_response.dart';
import 'google_cloud_aiplatform_v1_smooth_grad_config_response.dart';

/// An explanation method that redistributes Integrated Gradients attributions to segmented regions, taking advantage of the model's fully differentiable structure. Refer to this paper for more details: https://arxiv.org/abs/1906.02825 Supported only by image Models.
class GoogleCloudAiplatformV1XraiAttributionResponse {
  /// Config for XRAI with blur baseline. When enabled, a linear path from the maximally blurred image to the input image is created. Using a blurred baseline instead of zero (black image) is motivated by the BlurIG approach explained here: https://arxiv.org/abs/2004.03383
  final pulumi.Input<GoogleCloudAiplatformV1BlurBaselineConfigResponse> blurBaselineConfig;
  /// Config for SmoothGrad approximation of gradients. When enabled, the gradients are approximated by averaging the gradients from noisy samples in the vicinity of the inputs. Adding noise can help improve the computed gradients. Refer to this paper for more details: https://arxiv.org/pdf/1706.03825.pdf
  final pulumi.Input<GoogleCloudAiplatformV1SmoothGradConfigResponse> smoothGradConfig;
  /// The number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is met within the desired error range. Valid range of its value is [1, 100], inclusively.
  final pulumi.Input<int> stepCount;

  /// Creates a new [GoogleCloudAiplatformV1XraiAttributionResponse].
  /// [blurBaselineConfig] Config for XRAI with blur baseline. When enabled, a linear path from the maximally blurred image to the input image is created. Using a blurred baseline instead of zero (black image) is motivated by the BlurIG approach explained here: https://arxiv.org/abs/2004.03383
  /// [smoothGradConfig] Config for SmoothGrad approximation of gradients. When enabled, the gradients are approximated by averaging the gradients from noisy samples in the vicinity of the inputs. Adding noise can help improve the computed gradients. Refer to this paper for more details: https://arxiv.org/pdf/1706.03825.pdf
  /// [stepCount] The number of steps for approximating the path integral. A good value to start is 50 and gradually increase until the sum to diff property is met within the desired error range. Valid range of its value is [1, 100], inclusively.
  GoogleCloudAiplatformV1XraiAttributionResponse({
    required this.blurBaselineConfig,
    required this.smoothGradConfig,
    required this.stepCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blurBaselineConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1BlurBaselineConfigResponse, Map<String, dynamic>>(blurBaselineConfig, (value) => value.toMap()),
      'smoothGradConfig': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1SmoothGradConfigResponse, Map<String, dynamic>>(smoothGradConfig, (value) => value.toMap()),
      'stepCount': stepCount,
    };
  }

  factory GoogleCloudAiplatformV1XraiAttributionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1XraiAttributionResponse(
      blurBaselineConfig: pulumi.Input.fromValue(GoogleCloudAiplatformV1BlurBaselineConfigResponse.fromMap((map['blurBaselineConfig']! as Map).cast<String, dynamic>())),
      smoothGradConfig: pulumi.Input.fromValue(GoogleCloudAiplatformV1SmoothGradConfigResponse.fromMap((map['smoothGradConfig']! as Map).cast<String, dynamic>())),
      stepCount: pulumi.Input.fromValue(map['stepCount'] as int),
    );
  }
}

