/// Fuse Energy Embedded Software Engineer CV.
///
/// Role-tailored content only. Layout comes from Templates/cv/template.typ.
#import "../../Templates/cv/template.typ": *

#show: cv-init

#cv-header(
  [Andrew Thomas],
  [
    Fareham, United Kingdom · 07464 093706 · aepthomas.epsom\@gmail.com \
    linkedin.com/in/andrew-t-002008109 · github.com/AThomas102
  ],
)

#cv-section[Profile]
Embedded Engineer with experience in device firmware, Linux drivers, RTOS, and secure boot. Strong in C/C++ and Python, with lab debugging across I2C/SPI and bring-up. Seeking to apply secure firmware update and connectivity experience to Fuse's Energy Network devices.

#cv-section[Technical Skills]
#cv-skills((
  ([Languages], [C, C++, Python]),
  ([Embedded], [FreeRTOS, STM32, I2C, SPI, CAN; MISRA C firmware]),
  ([Security], [secure bootloader chain of trust; NIST SP 800-193; FIPS 186-5 DSA; signed firmware update]),
  ([Tooling], [Linux kernel drivers, Jenkins CI/CD, CMake, Bash]),
  ([Debug], [logic analysers, oscilloscopes; PCB design (Altium, KiCad)]),
))

#cv-section[Professional Experience]

#cv-job([Embedded Engineer], [TouchNetix, Fareham], [Sep 2025 – Present], [
  - Designed and implemented a secure bootloader chain of trust on an embedded touchpad device, compliant with NIST SP 800-193, including root-of-trust signing with a FIPS 186-5 compliant DSA for secure firmware download and update.
  - Developing a touchscreen controller driver for the mainline Linux Kernel (LKML), following upstream coding standards and managing patch submissions.
  - Collaborated with hardware team in Norway during chip bring-up; cut self-test latency from 2s to 50ms.
  - Investigated and resolved firmware bugs and I2C/SPI timing issues using logic analysers and oscilloscopes.
])

#cv-job([5G Software Engineer], [Accelercomm, Southampton], [Oct 2023 – Sep 2025], [
  - Led company-wide compliance with 3GPP 5G NR standards in a regulated telecommunications environment.
  - Built a Python CI/CD workflow (Jenkins) for MATLAB-generated test vectors with JSON schema validation; archived outputs in Artifactory for pytest and Google Test regression.
  - Implemented DPDK-based hardware accelerator drivers; championed TDD and code reviews.
])

#cv-job([Instrumentation Lead], [Lancaster Formula Student], [Sep 2022 – Jul 2023], [
  - Led a CAN-based telemetry network integrating sensors via I2C/SPI for real-time collection, logging and analysis.
  - Implemented FreeRTOS task management on STM32 microcontrollers; designed and tested PCBs for EV control and telemetry.
])

#cv-job([Advanced Packaging Intern], [CSA Catapult, Newport], [Jul 2021 – Jul 2022], [
  - Collaborated with industry partners to prototype RF and power semiconductor applications.
  - Improved wire bonding and die attachment for micro-scale dies; ran thermo-mechanical simulations to reduce thermal stress.
])

#cv-section[Education]

#cv-education(
  [MEng Electrical and Electronic Engineering],
  [Lancaster University],
  [Sep 2018 – Jul 2023],
  details: [Relevant modules: Advanced Embedded Systems, Digital Signal Processing, Optoelectronics and Wireless Communications, Power Electronics.],
)

#cv-education(
  [A-Levels: Maths (A\*), Further Maths (A\*), Physics (A\*), Chemistry (A)],
  [Epsom College],
  [Sep 2012 – Jul 2018],
)
