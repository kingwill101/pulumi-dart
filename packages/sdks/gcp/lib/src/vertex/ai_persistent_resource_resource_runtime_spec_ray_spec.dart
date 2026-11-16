// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiPersistentResourceResourceRuntimeSpecRaySpec {
  /// Default image for user to choose a preferred ML framework
  /// (for example, TensorFlow or Pytorch) by choosing from [Vertex prebuilt
  /// images](https://cloud.google.com/vertex-ai/docs/training/pre-built-containers).
  /// Either this or the resourcePoolImages is required. Use this field if
  /// you need all the resource pools to have the same Ray image. Otherwise, use
  /// the `resourcePoolImages` field.
  final pulumi.Input<String?>? imageUri;

  /// Creates a new [AiPersistentResourceResourceRuntimeSpecRaySpec].
  /// [imageUri] Default image for user to choose a preferred ML framework
  const AiPersistentResourceResourceRuntimeSpecRaySpec({
    this.imageUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageUri': ?imageUri,
    };
  }

  factory AiPersistentResourceResourceRuntimeSpecRaySpec.fromMap(Map<String, dynamic> map) {
    return AiPersistentResourceResourceRuntimeSpecRaySpec(
      imageUri: (() { final guardedValue = map['imageUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
