import styled from "styled-components";

const StyeldModalCloseButton = styled.button`
  top: 5px;
  position: absolute;
  right: 5px;
  padding: 8px 20px;
  border: none;
  background-color: transparent;
  cursor: pointer;
  z-index: 1000;
`;
const ModalCloseButton = ({ close }) => {
  return (
    <StyeldModalCloseButton onClick={close}>
      <i class="fas fa-times" />
    </StyeldModalCloseButton>
  );
};

export default ModalCloseButton;
