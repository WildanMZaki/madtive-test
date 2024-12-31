const checkDoubleValue = (values) => {
  const uniqueValues = [];
  const normalizedValues = [];

  values.forEach((item) => {
    const normalizedItem =
      typeof item === "string" ? item.toLowerCase() : String(item);

    if (!normalizedValues.includes(normalizedItem)) {
      uniqueValues.push(item);
      normalizedValues.push(normalizedItem);
    }
  });

  return uniqueValues;
};

const values = [
  "Bola",
  "Bintang",
  1,
  "Matahari",
  "Matahari",
  5,
  "Bulan",
  "Bola",
  "bintang",
  "5",
];

console.log(checkDoubleValue(values));
