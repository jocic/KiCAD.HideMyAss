- Serial IO port for AT commands (start charging, stop charging, charging status, pause charging, current control, etc.)
- Replace LM741 with a proper comparator
- Use %1 5V voltage reference for the ADC
- Add a boost converter for battery bank that can be used on laptops
- Increase the current up to 1A
- Experiment with LM317 & 0.1A precision voltage regulator for creating precise voltage references ex. 4.2V for the shut off, and 5 for ADC
- Design or find enclosure for the battery bank