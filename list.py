def read_srn_list():
    srn_count = int(input("Enter the number of students (N): "))
    srn_list = []
    for _ in range(srn_count):
        srn = input("Enter SRN: ")
        srn_list.append(srn)
    # Return a sorted list of SRNs
    return sorted(srn_list)

def insert_srn(srn_list):
    new_count = int(input("Enter the number of additional students (M): "))
    for _ in range(new_count):
        new_srn = input("Enter SRN to insert: ")
        # Insert the new SRN into the list while maintaining order
        srn_list.append(new_srn)
        srn_list.sort()  # Sort to maintain order
        index = srn_list.index(new_srn)  # Get the index of the newly inserted SRN
        print(f"SRN '{new_srn}' added at index {index}.")

def main():
    srn_list = read_srn_list()
    print(f"Initial sorted SRN list: {srn_list}")
    insert_srn(srn_list)
    print(f"Updated sorted SRN list: {srn_list}")

if __name__ == "__main__":
    main()
