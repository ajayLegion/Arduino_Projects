def read_tuple(name):
    """Reads N values from user input and returns a tuple."""
    n = int(input(f"Enter the number of elements for {name}: "))
    elements = []
    for _ in range(n):
        element = input(f"Enter element for {name}: ")
        # Attempt to convert to int or float, keep as string if it fails
        try:
            if '.' in element:
                elements.append(float(element))
            else:
                elements.append(int(element))
        except ValueError:
            elements.append(element)
    return tuple(elements)

def create_larger_tuple(tuple1, tuple2):
    """Creates a tuple containing the larger elements from tuple1 and tuple2."""
    larger_tuple = tuple(max(a, b) for a, b in zip(tuple1, tuple2))
    return larger_tuple

def main():
    TUPLE1 = read_tuple("TUPLE1")
    TUPLE2 = read_tuple("TUPLE2")
    TUPLE3 = create_larger_tuple(TUPLE1, TUPLE2)
    print("TUPLE1:", TUPLE1)
    print("TUPLE2:", TUPLE2)
    print("TUPLE3 (larger values):", TUPLE3)

if __name__ == "__main__":
    main()
