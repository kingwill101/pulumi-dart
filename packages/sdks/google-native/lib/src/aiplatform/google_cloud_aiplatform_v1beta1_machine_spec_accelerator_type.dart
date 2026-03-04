/// Immutable. The type of accelerator(s) that may be attached to the machine as per accelerator_count.
enum GoogleCloudAiplatformV1beta1MachineSpecAcceleratorType {
  acceleratorTypeUnspecified("ACCELERATOR_TYPE_UNSPECIFIED"),
  nvidiaTeslaK80("NVIDIA_TESLA_K80"),
  nvidiaTeslaP100("NVIDIA_TESLA_P100"),
  nvidiaTeslaV100("NVIDIA_TESLA_V100"),
  nvidiaTeslaP4("NVIDIA_TESLA_P4"),
  nvidiaTeslaT4("NVIDIA_TESLA_T4"),
  nvidiaTeslaA100("NVIDIA_TESLA_A100"),
  nvidiaA10080gb("NVIDIA_A100_80GB"),
  nvidiaL4("NVIDIA_L4"),
  nvidiaH10080gb("NVIDIA_H100_80GB"),
  tpuV2("TPU_V2"),
  tpuV3("TPU_V3"),
  tpuV4Pod("TPU_V4_POD"),
  tpuV5Litepod("TPU_V5_LITEPOD");

  const GoogleCloudAiplatformV1beta1MachineSpecAcceleratorType(this.wireValue);
  final String wireValue;

  static GoogleCloudAiplatformV1beta1MachineSpecAcceleratorType fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudAiplatformV1beta1MachineSpecAcceleratorType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudAiplatformV1beta1MachineSpecAcceleratorType value: $value',
    );
  }
}
