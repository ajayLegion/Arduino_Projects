# Circuit Building Lab Manual

## Table of Contents

- Experiment 1a: 7-Segment Display (0-9 Numbers)
- Experiment 1b: 7-Segment Display (A-F Alphabets)
  https://www.tinkercad.com/things/gwXi2kGXB13-2nd-cb-7-segment-display
- Experiment 2: Right Scrolling LCD Display
  https://www.tinkercad.com/things/5klwZ189iIm-liquid-crystal-display-lcd-right-scrolling-lcd-display
- Experiment 3: Analog Voltage Reader on LCD Display
 https://www.tinkercad.com/things/fxa3ivjZjNY-analog-voltage-reader-on-lcd-display
- Experiment 4: Temperature and Humidity Sensor
   https://www.tinkercad.com/things/iIAmcnGRxcU-temperature-amp-humidity-sensor
- Experiment 5: Gas Sensor with LCD Display
  https://www.tinkercad.com/things/gEUjLIO6PON-gas-sensor-with-lcd-display
- Experiment 6: PIR Sensor with LCD Display
  https://www.tinkercad.com/things/7mH05oIC1VK-pir-sensor-with-lcd-display
- Experiment 7: Ultrasonic Sensor with LCD Display
  https://www.tinkercad.com/things/6g3PQnDN2Br-ultrasonic-sensor-with-lcd-display

## Experiment 1a: 7-Segment Display (0-9 Numbers)

### Introduction

A 7-segment display consists of 7 LEDs arranged in the shape of the number "8". Each segment is labeled as a, b, c, d, e, f, and g. By turning specific segments ON or OFF, digits from 0 to 9 can be displayed.

### Components

- Arduino board
- 7-segment display (common cathode)
- 7 current-limiting resistors (220 Ω)
- Connecting wires
- Breadboard

### Working Principle

1. **Structure**: The display has 7 LEDs (a to g) arranged to form an "8". It can be common cathode (CC) or common anode (CA). In CC, all LED cathodes are connected to GND; in CA, all anodes are connected to VCC.
2. **Electrical Operation**: In a CC display, setting a segment pin to HIGH allows current to flow from VCC through the segment to GND, lighting it up. In a CA display, setting a segment pin to LOW lights it up.
3. **Controlling Segments**: Specific HIGH/LOW signals to segment pins form desired digits.
4. **Logic**: Each digit (0-9) uses a unique segment combination. For example, to display 3, segments a, b, c, d, and g are ON, while e and f are OFF.
5. **Arduino Control**: The Arduino sets pins as outputs and sends HIGH/LOW signals based on binary patterns for each digit.
6. **Power Management**: Use 220 Ω resistors to limit current and protect LEDs. The Arduino provides 5V power.

### Applications

- Clocks and timers
- Counters
- Measurements
- Electronic gadgets
- Home appliances
- Automobiles
- Consumer electronics
- Medical equipment
- Information display boards

### Key Points

- **Types**: Common Cathode (CC) lights with HIGH signals; Common Anode (CA) lights with LOW signals.
- **Power**: Operates at 5V; use 220–330 Ω resistors to prevent LED damage.
- **Control**: Each digit has a unique binary pattern; use Arduino or driver ICs.

### Code

```cpp

```

## Experiment 1b: 7-Segment Display (A-F Alphabets)

### Introduction

This experiment extends the 7-segment display to show alphabets A to F by lighting specific segments, though the display's limitations result in stylized representations.

### Components

- Arduino board
- 7-segment display (common cathode)
- 7 current-limiting resistors (220 Ω)
- Connecting wires
- Breadboard

### Working Principle

The working principle mirrors Experiment 1a, with the Arduino controlling segments to display letters A to F using specific segment combinations.

### Code

```cpp
// Define the segment pins for the 7-segment display
int a = 2; // Segment a
int b = 3; // Segment b
int c = 4; // Segment c
int d = 5; // Segment d
int e = 6; // Segment e
int f = 7; // Segment f
int g = 8; // Segment g

void setup() {
  // Set segment pins as output
  pinMode(a, OUTPUT);
  pinMode(b, OUTPUT);
  pinMode(c, OUTPUT);
  pinMode(d, OUTPUT);
  pinMode(e, OUTPUT);
  pinMode(f, OUTPUT);
  pinMode(g, OUTPUT);
}

void displayLetter(char letter) {
  switch (letter) {
    case 'A': // Display A
      digitalWrite(a, HIGH);
      digitalWrite(b, HIGH);
      digitalWrite(c, HIGH);
      digitalWrite(d, LOW);
      digitalWrite(e, HIGH);
      digitalWrite(f, HIGH);
      digitalWrite(g, HIGH);
      break;
    case 'b': // Display b
      digitalWrite(a, LOW);
      digitalWrite(b, LOW);
      digitalWrite(c, HIGH);
      digitalWrite(d, HIGH);
      digitalWrite(e, HIGH);
      digitalWrite(f, HIGH);
      digitalWrite(g, HIGH);
      break;
    case 'C': // Display C
      digitalWrite(a, HIGH);
      digitalWrite(b, LOW);
      digitalWrite(c, LOW);
      digitalWrite(d, HIGH);
      digitalWrite(e, HIGH);
      digitalWrite(f, HIGH);
      digitalWrite(g, LOW);
      break;
    case 'd': // Display d
      digitalWrite(a, LOW);
      digitalWrite(b, HIGH);
      digitalWrite(c, HIGH);
      digitalWrite(d, HIGH);
      digitalWrite(e, HIGH);
      digitalWrite(f, LOW);
      digitalWrite(g, HIGH);
      break;
    case 'E': // Display E
      digitalWrite(a, HIGH);
      digitalWrite(b, LOW);
      digitalWrite(c, LOW);
      digitalWrite(d, HIGH);
      digitalWrite(e, HIGH);
      digitalWrite(f, HIGH);
      digitalWrite(g, HIGH);
      break;
    case 'F': // Display F
      digitalWrite(a, HIGH);
      digitalWrite(b, LOW);
      digitalWrite(c, LOW);
      digitalWrite(d, LOW);
      digitalWrite(e, HIGH);
      digitalWrite(f, HIGH);
      digitalWrite(g, HIGH);
      break;
  }
}

void loop() {
  // Display letters A to F
  char letters[] = {'A', 'b', 'C', 'd', 'E', 'F'};
  for (int i = 0; i < 6; i++) {
    displayLetter(letters[i]);
    delay(1000); // Wait 1 second
  }
}
```
### Experiment 1b: 7-Segment Display (A-Z Alphabets)
```cpp
// Define the segment pins for the 7-segment display
const int segmentPins[7] = {2, 3, 4, 5, 6, 7, 8};

// Define segment states for letters A-Z
const bool letters[26][7] = {
    {1, 1, 1, 1, 1, 1, 0}, // A
    {0, 1, 1, 1, 1, 1, 1}, // B
    {1, 0, 0, 1, 1, 1, 0}, // C
    {0, 1, 1, 1, 1, 0, 1}, // D
    {1, 0, 0, 1, 1, 1, 1}, // E
    {1, 0, 0, 0, 1, 1, 1}, // F
    {1, 0, 1, 1, 1, 1, 0}, // G
    {0, 1, 1, 1, 0, 1, 1}, // H
    {0, 0, 0, 0, 1, 0, 0}, // I
    {0, 1, 1, 1, 1, 0, 0}, // J
    {1, 1, 1, 0, 0, 1, 1}, // K
    {1, 0, 0, 0, 1, 1, 1}, // L
    {0, 1, 1, 1, 0, 1, 0}, // M
    {0, 1, 1, 1, 0, 1, 1}, // N
    {1, 1, 1, 1, 1, 1, 0}, // O
    {1, 1, 1, 0, 1, 1, 1}, // P
    {1, 1, 1, 1, 1, 0, 1}, // Q
    {1, 1, 1, 0, 1, 0, 1}, // R
    {1, 0, 1, 1, 1, 1, 1}, // S
    {1, 1, 1, 0, 0, 0, 1}, // T
    {0, 1, 1, 1, 1, 1, 0}, // U
    {0, 1, 1, 1, 1, 1, 1}, // V
    {0, 1, 1, 1, 0, 1, 1}, // W
    {1, 1, 1, 1, 1, 1, 1}, // X
    {0, 1, 1, 1, 1, 1, 1}, // Y
    {1, 0, 1, 1, 1, 1, 0}  // Z
};

// Function to display a letter (A-Z) on a 7-segment display

   
        for(int i = 0; i < 7; i++) {
            digitalWrite(segmentPins[i], letters[index][i]);
        }
   

// Function to initialize segment pins
void initializePins() {
    for (int i = 0; i < 7; i++) {
        pinMode(segmentPins[i], OUTPUT);
    }
}

void setup() {
    initializePins();
}

void loop() {
    // Loop through letters A to Z and display each for 1 second
    for (int letter = 1; letter <=26; letter++) {
        displayLetter(letter);
        delay(1000); // Wait 1 second before displaying the next letter
    }
}
```

## Experiment 2: Right Scrolling LCD Display

### Introduction

A 16x2 LCD is used to create a right-scrolling text display using the LiquidCrystal library.

### Components

- 16x2 LCD module
- Arduino board
- 10k Ω potentiometer
- 220 Ω resistor
- Connecting wires
- Breadboard

### Working Principle

- The LCD displays alphanumeric characters using a controller (e.g., HD44780).
- The "Shift Display Right" command (0x1C) moves text right.
- Scrolling is implemented by sending the shift command in a loop with delays.

### Key LCD Commands

- 0x01: Clear display
- 0x02: Return cursor to home
- 0x0C: Display ON, cursor OFF
- 0x1C: Shift display right

### Applications

- Digital notice boards
- Industrial automation systems
- Retail and advertising
- Transportation systems
- Security systems
- Automotive displays
- Event displays
- Energy metering systems
- Health monitoring devices
- Consumer electronics

### Key Points

- Use the LiquidCrystal library for Arduino.
- Verify wiring and initialization for debugging.
- Adjust delays to control scrolling speed.

### Code

```cpp
#include <LiquidCrystal.h>

// Initialize the LCD (RS, E, D4, D5, D6, D7)
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

// Define the sentences for both rows
String firstRowMessage = "The quick brown fox jumps over the lazy dog.";
String secondRowMessage = "Scroll second line after first line finishes.";

void setup() {
  // Set up the LCD
  lcd.begin(16, 2);
  lcd.clear();
}

void loop() {
  // Scroll the first row
  for (int position = 0; position < firstRowMessage.length(); position++) {
    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print(firstRowMessage.substring(position, position + 16));
    lcd.setCursor(0, 1);
    lcd.print("");
    delay(300); // Adjust scroll speed
  }
  // Scroll the second row
  for (int position = 0; position < secondRowMessage.length(); position++) {
    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print("");
    lcd.setCursor(0, 1);
    lcd.print(secondRowMessage.substring(position, position + 16));
    delay(300); // Adjust scroll speed
  }
  delay(2000); // Wait before restarting
}
```

## Experiment 3: Analog Voltage Reader on LCD Display

### Introduction

This experiment reads an analog voltage using Arduino’s ADC and displays it on a 16x2 LCD.

### Components

- Arduino (e.g., UNO, Nano)
- 16x2 LCD display
- 10k Ω potentiometer
- Breadboard
- Wires

### Working Principle

- Arduino reads analog voltage via analogRead() on pin A0.
- The 10-bit ADC converts 0–5V to 0–1023.
- Voltage is calculated as: Voltage = (ADC Value / 1023) × 5.
- Resistance, current, and power are calculated and displayed.

### Applications

- Battery monitoring
- Current sensor
- Educational projects
- DIY multimeter

### Key Points

- Use analog pin A0 for input.
- Connect LCD in 4-bit mode and adjust contrast with a potentiometer.
- Use a voltage divider for inputs exceeding 5V.

### Code

```cpp
#include <LiquidCrystal.h>

// Initialize the LCD (RS, E, D4, D5, D6, D7)
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);

const int potPin = A0; // Potentiometer connected to A0
const float supplyVoltage = 5.0; // Arduino supply voltage
const int analogMax = 1023; // Maximum ADC value
const float Rref = 10000.0; // Reference resistor (10k Ohms)

float voltage; // Measured voltage
float resistance; // Calculated resistance
float current; // Calculated current
float power; // Calculated power

void setup() {
  lcd.begin(16, 2);
  lcd.print("Initializing...");
  delay(1000);
  lcd.clear();
}

void loop() {
  // Read voltage
  int sensorValue = analogRead(potPin);
  voltage = (sensorValue * supplyVoltage) / analogMax;
  // Calculate resistance using voltage divider
  resistance = (voltage * Rref) / (supplyVoltage - voltage);
  // Calculate current (I = V/R)
  current = voltage / resistance;
  // Calculate power (P = V*I)
  power = voltage * current;
  // Display on LCD
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("V=");
  lcd.print(voltage, 2);
  lcd.print("V R=");
  lcd.print(resistance, 0);
  lcd.print("Ohm");
  lcd.setCursor(0, 1);
  lcd.print("I=");
  lcd.print(current * 1000, 2);
  lcd.print("mA P=");
  lcd.print(power * 1000, 2);
  lcd.print("mW");
  delay(500); // Update every 500ms
}
```

## Experiment 4: Temperature and Humidity Sensor

### Introduction

A DHT11 or DHT22 sensor measures temperature and humidity, displayed on a 16x2 LCD.

### Components

- Arduino (e.g., UNO, Nano)
- 16x2 LCD display
- 10k Ω potentiometer
- DHT11 or DHT22 sensor
- 10k Ω resistor
- Breadboard
- Wires

### Working Principle

- **Humidity Sensing**: A capacitive sensor measures relative humidity.
- **Temperature Sensing**: A thermistor measures temperature.
- **Communication**: Uses a single-wire serial interface.

### Applications

- Weather monitoring stations
- Home automation
- Greenhouse monitoring
- Industrial monitoring
- Healthcare

### Key Points

- Select appropriate sensor (DHT11/DHT22).
- Use a 10k Ω pull-up resistor for the data pin.
- Read sensor every 2 seconds to avoid errors.
- Calibrate for accuracy.

### Code

```cpp
#include <LiquidCrystal.h>
#include <DHT.h>

#define DHTPIN A1
#define DHTTYPE DHT11

LiquidCrystal lcd(12, 11, 5, 4, 3, 2);
DHT dht(DHTPIN, DHTTYPE);

void setup() {
  lcd.begin(16, 2);
  dht.begin();
  Serial.begin(9600);
  lcd.print("Initializing...");
  delay(2000);
  lcd.clear();
}

void loop() {
  float temperature = dht.readTemperature();
  float humidity = dht.readHumidity();
  if (!isnan(temperature) && !isnan(humidity)) {
    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print("Temp: ");
    lcd.print(temperature, 1);
    lcd.print("C");
    lcd.setCursor(0, 1);
    lcd.print("Hum: ");
    lcd.print(humidity, 1);
    lcd.print("%");
  } else {
    lcd.clear();
    lcd.print("Sensor Error");
  }
  delay(2000); // Update every 2 seconds
}
```

## Experiment 5: Gas Sensor with LCD Display

### Introduction

A gas sensor (e.g., MQ-2) detects gas concentration, displayed on a 16x2 LCD with LED indicators and a buzzer for alerts.

### Components

- Arduino (e.g., UNO, Nano)
- 16x2 LCD display
- MQ-2 gas sensor
- 10k Ω potentiometer
- 220 Ω resistor
- Green, yellow, red LEDs
- Buzzer
- Breadboard
- Wires

### Working Principle

- The MQ-2 sensor’s resistance changes with gas concentration.
- Arduino’s ADC converts the analog output to a digital value.
- Gas concentration is calculated and displayed, with LEDs and buzzer indicating levels.

### Key Points

- Warm up the sensor for 2–5 minutes.
- Ensure analog output is within 0–5V.
- Use delays to prevent LCD flickering.
- Recalibrate periodically due to sensor degradation.

### Code

```cpp
#include <LiquidCrystal.h>

LiquidCrystal lcd(12, 11, 5, 4, 3, 2);
const int GAS_PIN = A1;
const int GREEN_LED = 7;
const int YELLOW_LED = 6;
const int RED_LED1 = 5;
const int RED_LED2 = 10;
const int BUZZER = A5;

void setup() {
  lcd.begin(16, 2);
  pinMode(GREEN_LED, OUTPUT);
  pinMode(YELLOW_LED, OUTPUT);
  pinMode(RED_LED1, OUTPUT);
  pinMode(RED_LED2, OUTPUT);
  pinMode(BUZZER, OUTPUT);
  lcd.print("Warming Up...");
  delay(120000); // 2-minute warm-up
  lcd.clear();
}

void loop() {
  int sensorValue = analogRead(GAS_PIN);
  float voltage = sensorValue * (5.0 / 1023.0);
  float concentration = voltage * 100; // Simplified conversion
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Gas: ");
  lcd.print(concentration, 1);
  lcd.print(" ppm");
  if (concentration < 50) {
    digitalWrite(GREEN_LED, HIGH);
    digitalWrite(YELLOW_LED, LOW);
    digitalWrite(RED_LED1, LOW);
    digitalWrite(RED_LED2, LOW);
    noTone(BUZZER);
  } else if (concentration < 100) {
    digitalWrite(GREEN_LED, LOW);
    digitalWrite(YELLOW_LED, HIGH);
    digitalWrite(RED_LED1, LOW);
    digitalWrite(RED_LED2, LOW);
    noTone(BUZZER);
  } else {
    digitalWrite(GREEN_LED, LOW);
    digitalWrite(YELLOW_LED, LOW);
    digitalWrite(RED_LED1, HIGH);
    digitalWrite(RED_LED2, HIGH);
    tone(BUZZER, 1000);
  }
  delay(250);
}
```

## Experiment 6: PIR Sensor with LCD Display

### Introduction

A PIR sensor detects motion by sensing changes in infrared radiation, displayed on a 16x2 LCD.

### Components

- Arduino (e.g., UNO, Nano)
- 16x2 LCD display
- PIR sensor
- 10k Ω potentiometer
- 220 Ω resistor
- Breadboard
- Wires

### Working Principle

- A pyroelectric sensor detects infrared changes.
- A Fresnel lens focuses infrared radiation.
- The sensor outputs HIGH when motion is detected, displayed on the LCD.

### Key Points

- PIR sensor operates at 3.3–5V, with a 3–7m range and 120° angle.
- Adjust sensitivity and time delay as needed.

### Code

```cpp
#include <LiquidCrystal.h>

LiquidCrystal lcd(12, 11, 5, 4, 3, 2);
const int PIR_PIN = 9;

void setup() {
  lcd.begin(16, 2);
  pinMode(PIR_PIN, INPUT);
  lcd.print("Initializing...");
  delay(2000);
  lcd.clear();
}

void loop() {
  if (digitalRead(PIR_PIN) == HIGH) {
    lcd.clear();
    lcd.print("Motion Detected");
    delay(500);
  } else {
    lcd.clear();
    lcd.print("No Motion");
    delay(500);
  }
}
```

## Experiment 7: Ultrasonic Sensor with LCD Display

### Introduction

An ultrasonic sensor measures distance by emitting and receiving ultrasonic waves, displayed on a 16x2 LCD.

### Components

- Arduino (e.g., UNO, Nano)
- 16x2 LCD display
- HC-SR04 ultrasonic sensor
- 10k Ω potentiometer
- 220 Ω resistor
- Breadboard
- Wires

### Working Principle

- The transmitter emits a 40 kHz ultrasonic pulse.
- The receiver captures the reflected echo.
- Distance is calculated as: Distance = (Time × 343) / 2 (m), where 343 m/s is the speed of sound at 20°C.

### Key Points

- Effective range: 2 cm to 400 cm.
- Temperature affects sound speed; adjust calculations if needed.

### Code

```cpp
#include <LiquidCrystal.h>

LiquidCrystal lcd(12, 11, 5, 4, 3, 2);
const int trigPin = 9;
const int echoPin = 10;

void setup() {
  lcd.begin(16, 2);
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
  lcd.print("Initializing...");
  delay(2000);
  lcd.clear();
}

void loop() {
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
  long duration = pulseIn(echoPin, HIGH);
  float distance = duration * 0.0343 / 2; // Speed of sound = 343 m/s
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Distance: ");
  lcd.print(distance, 1);
  lcd.print(" cm");
  delay(500);
}
```