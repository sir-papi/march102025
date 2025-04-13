document.addEventListener("DOMContentLoaded", () => {
  const toggle = document.getElementById('darkToggle');
  const currentMode = localStorage.getItem('mode') || 'light';

  document.body.classList.add(`${currentMode}-mode`);
  toggle.checked = currentMode === 'dark';

  toggle.addEventListener('change', () => {
    const mode = toggle.checked ? 'dark' : 'light';
    document.body.classList.remove('light-mode', 'dark-mode');
    document.body.classList.add(`${mode}-mode`);
    localStorage.setItem('mode', mode);
  });
});
