export function getMonthVN(date: string) {
  if (!date || !new Date(date)) {
    return;
  }

  return `Tháng ${new Date(date).getMonth() + 1}`;
}

export function getDate(date: string) {
  if (!date || !new Date(date)) {
    return;
  }

  return new Date(date).getDate();
}

export function getYear(date: string) {
  if (!date || !new Date(date)) {
    return;
  }

  return new Date(date).getFullYear();
}

export function getFullVNDate(date: string) {
  if (!date || !new Date(date)) {
    return;
  }

  return `${getDate(date)} ${getMonthVN(date)} ${getYear(date)}`;
}
