
def decode(message_file):
    file = open(message_file, "r")

    lines = file.read().split('\n')

    file.close()

    pairs = list(
        map(
            lambda l: [
                int(
                    l.split(' ')[0]
                ),
                l.split(' ')[1].rstrip('\n')
            ],
            lines
        )
    )

    pairs.sort(key=lambda l: l[0])

    final = ''

    interval = 2
    index = 0
    while index < len(pairs):
        if final != '':
            final += ' '
        final += pairs[index][1]
        index += interval
        interval += 1

    return final


print(decode('src/data.txt'))
