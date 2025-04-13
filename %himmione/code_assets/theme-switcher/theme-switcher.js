document.addEventListener("DOMContentLoaded", () => {
  const select = document.getElementById('theme-select');
  const preview = document.getElementById('code-preview');

  // Load saved theme
  const savedTheme = localStorage.getItem('codeTheme');
  if (savedTheme) {
    select.value = savedTheme;
    applyTheme(savedTheme);
  }

  select.addEventListener('change', () => {
    const selected = select.value;
    localStorage.setItem('codeTheme', selected);
    applyTheme(selected);
  });

  function applyTheme(theme) {
    preview.classList.remove('hacker-theme', 'modern-theme');
    preview.classList.add(`${theme}-theme`);
  }
});
