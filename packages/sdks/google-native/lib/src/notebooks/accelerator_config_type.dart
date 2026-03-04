/// Type of this accelerator.
enum AcceleratorConfigType {
  acceleratorTypeUnspecified("ACCELERATOR_TYPE_UNSPECIFIED"),
  nvidiaTeslaK80("NVIDIA_TESLA_K80"),
  nvidiaTeslaP100("NVIDIA_TESLA_P100"),
  nvidiaTeslaV100("NVIDIA_TESLA_V100"),
  nvidiaTeslaP4("NVIDIA_TESLA_P4"),
  nvidiaTeslaT4("NVIDIA_TESLA_T4"),
  nvidiaTeslaA100("NVIDIA_TESLA_A100"),
  nvidiaL4("NVIDIA_L4"),
  nvidiaTeslaT4Vws("NVIDIA_TESLA_T4_VWS"),
  nvidiaTeslaP100Vws("NVIDIA_TESLA_P100_VWS"),
  nvidiaTeslaP4Vws("NVIDIA_TESLA_P4_VWS"),
  tpuV2("TPU_V2"),
  tpuV3("TPU_V3");

  const AcceleratorConfigType(this.wireValue);
  final String wireValue;

  static AcceleratorConfigType fromValue(String value) {
    for (final item in AcceleratorConfigType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AcceleratorConfigType value: $value');
  }
}
